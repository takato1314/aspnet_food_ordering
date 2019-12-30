using System.Data.Entity;
using Mcd.Data.Dto;

namespace Mcd.Data
{
    public class McdContext : DbContext
    {
        public DbSet<Beverage> Beverages { get; set; }
    }
}
