using FullCartAPI.Models;
using Microsoft.EntityFrameworkCore;

namespace FullCartAPI.Data
{
    public class FullCartDBContext : DbContext
    {
        public FullCartDBContext(DbContextOptions options) : base(options)
        {

        }

        public DbSet<Employee> Employees { get; set; }
        public DbSet<Product> Products { get; set; }

    }
}
