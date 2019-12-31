using System.Data.Entity;
using Mcd.Client.Data.Dto;

namespace Mcd.Client.Data
{
    public class McdContext : DbContext
    {
        public DbSet<Beverage> Beverages { get; set; }
    }
}
