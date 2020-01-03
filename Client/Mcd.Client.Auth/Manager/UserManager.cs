using System;
using System.Threading.Tasks;
using Mcd.Client.Auth.Dto;
using Mcd.Client.Auth.Services;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin;
using Microsoft.Owin.Security;

namespace Mcd.Client.Auth.Manager
{
    public class UserManager : UserManager<AppUser>
    {
        private IUserStore<AppUser> _userStore;

        public UserManager(IUserStore<AppUser> store) : base(store)
        {
            _userStore = store;
        }

        public void SignIn(
            Constants.SignInApplication signInType,
            IOwinContext context,
            AppUser appUser = null)
        {
            switch (signInType)
            {
                case Constants.SignInApplication.Cookie:
                    CreateUser(appUser);
                    break;

                case Constants.SignInApplication.Facebook:
                    context.Authentication.Challenge(new AuthenticationProperties { IsPersistent = true, RedirectUri = "Account/Facebook" }, Constants.SignInApplication.Facebook.ToString());
                    break;

                case Constants.SignInApplication.Google:
                    context.Authentication.Challenge(new AuthenticationProperties { IsPersistent = true, RedirectUri = "Account/Google" }, Constants.SignInApplication.Google.ToString());
                    break;
            }
        }

        public async Task CreateUser(AppUser appUser)
        {
            var existingUser = await _userStore.FindByIdAsync(appUser.Id);
            if (existingUser == null)
            {
            }
        }

        public static UserManager Create(
            IdentityFactoryOptions<UserManager> options,
            IOwinContext context)
        {
            var manager = new UserManager(new UserStore<AppUser>(context.Get<ApplicationDbContext>()));
            
            // Configure validation logic for usernames
            manager.UserValidator = new UserValidator<AppUser>(manager)
            {
                AllowOnlyAlphanumericUserNames = false,
                RequireUniqueEmail = true
            };

            // Configure validation logic for passwords
            manager.PasswordValidator = new PasswordValidator
            {
                RequiredLength = 8,
                RequireNonLetterOrDigit = true,
                RequireDigit = true,
                RequireLowercase = true,
                RequireUppercase = true,
            };

            // Register two factor authentication providers. This application uses Phone and Emails as a step of receiving a code for verifying the appUser
            // You can write your own provider and plug it in here.
            var subject = "McDonald MY App: Account Registration";
            var messageFormat = "Hello appUser, you've registered an account for McDonald MY App.\n" +
                                " Your security code is {0}.";
            manager.RegisterTwoFactorProvider("Phone Code", new PhoneNumberTokenProvider<AppUser>
            {
                MessageFormat = messageFormat
            });
            manager.RegisterTwoFactorProvider("Email Code", new EmailTokenProvider<AppUser>
            {
                Subject = subject,
                BodyFormat = messageFormat
            });

            // Configure appUser lockout defaults
            manager.UserLockoutEnabledByDefault = true;
            manager.DefaultAccountLockoutTimeSpan = TimeSpan.FromMinutes(5);
            manager.MaxFailedAccessAttemptsBeforeLockout = 5;
            manager.EmailService = new EmailService();
            manager.SmsService = new SmsService();
            var dataProtectionProvider = options.DataProtectionProvider;
            if (dataProtectionProvider != null)
            {
                manager.UserTokenProvider = new DataProtectorTokenProvider<AppUser>(dataProtectionProvider.Create(subject));
            }
            return manager;
        }
    }
}
