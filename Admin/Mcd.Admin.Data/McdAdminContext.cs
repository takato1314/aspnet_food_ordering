using System.Data.Entity;
using Mcd.Admin.Data.Dto;

namespace Mcd.Admin.Data
{
    public class McdAdminContext : DbContext
    {
        public DbSet<Item> Items { get; set; }
        public DbSet<Employee> Employees { get; set; }
    }
}
