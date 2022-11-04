using Microsoft.EntityFrameworkCore;
using UniversityApi.Models.DataModels;

namespace UniversityApi.DataAccess
{
    public class UniversityDBContext : DbContext
    {
        public UniversityDBContext(DbContextOptions<UniversityDBContext> options): base(options) { }

        // TODO: Add DB Sets
        public DbSet<User>? users { get; set; }
        public DbSet<Course>? courses { get; set; }
    }
}
