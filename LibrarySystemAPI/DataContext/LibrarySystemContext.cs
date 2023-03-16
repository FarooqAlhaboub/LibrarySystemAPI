using LibrarySystemAPI.DataContext.EntityConfigurations;
using LibrarySystemAPI.Model;
using Microsoft.EntityFrameworkCore;

namespace LibrarySystemAPI.DataContext
{
    public class LibrarySystemContext : DbContext
    {
        public LibrarySystemContext(DbContextOptions<LibrarySystemContext> options)
            : base(options)
        {
            this.ChangeTracker.LazyLoadingEnabled = false;
        }

        public virtual DbSet<Author> Authors { get; set; }
        public virtual DbSet<Book> Books { get; set; }
        public virtual DbSet<Genre> Genres { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            new BookConfiguration().Configure(modelBuilder.Entity<Book>());
        }
    }
}
