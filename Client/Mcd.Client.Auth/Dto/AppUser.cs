using System.Security.Claims;
using System.Threading.Tasks;
using Mcd.Client.Auth.Manager;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace Mcd.Client.Auth.Dto
{
    // You can add AppUser data for the user by adding more properties to your AppUser class, please visit http://go.microsoft.com/fwlink/?LinkID=317594 to learn more.
    public class AppUser : IdentityUser
    {
        public ClaimsIdentity GenerateUserIdentity(UserManager manager)
        {
            // Note the authenticationType must match the one defined in CookieAuthenticationOptions.AuthenticationType
            var userIdentity = manager.CreateIdentity(this, DefaultAuthenticationTypes.ApplicationCookie);
            // Add custom user claims here
            return userIdentity;
        }

        public Task<ClaimsIdentity> GenerateUserIdentityAsync(UserManager manager)
        {
            return Task.FromResult(GenerateUserIdentity(manager));
        }
    }
}