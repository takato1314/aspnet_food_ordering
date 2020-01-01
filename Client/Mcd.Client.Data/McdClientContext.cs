using System.Data.Entity;
using Mcd.Client.Data.Dto;

namespace Mcd.Client.Data
{
    public class McdClientContext : DbContext
    {
        public DbSet<Beverage> Beverages { get; set; }
    }
}
