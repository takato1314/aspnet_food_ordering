using Mcd.Client.Auth.Dto;
using Microsoft.AspNet.Identity.EntityFramework;

namespace Mcd.Client.Auth
{
    public class ApplicationDbContext : IdentityDbContext<AppUser>
    {
        // TODO: Read from connection string?
        public ApplicationDbContext() : base("DefaultConnection", false)
        {
        }

        public static ApplicationDbContext Create()
        {
            return new ApplicationDbContext();
        }
    }
}
