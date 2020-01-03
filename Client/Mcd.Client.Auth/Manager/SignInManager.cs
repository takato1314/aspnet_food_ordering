using System.Security.Claims;
using System.Threading.Tasks;
using Mcd.Client.Auth.Dto;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin;
using Microsoft.Owin.Security;

namespace Mcd.Client.Auth.Manager
{
    public class SignInManager : SignInManager<AppUser, string>
    {
        public SignInManager(
            UserManager userManager,
            IAuthenticationManager authenticationManager)
            : base(userManager, authenticationManager)
        {
        }

        public override Task<ClaimsIdentity> CreateUserIdentityAsync(AppUser appUser)
        {
            return appUser.GenerateUserIdentityAsync((UserManager) UserManager);
        }

        public static SignInManager Create(
            IdentityFactoryOptions<SignInManager> options,
            IOwinContext context)
        {
            return new SignInManager(
                context.GetUserManager<UserManager>(),
                context.Authentication);
        }
    }
}