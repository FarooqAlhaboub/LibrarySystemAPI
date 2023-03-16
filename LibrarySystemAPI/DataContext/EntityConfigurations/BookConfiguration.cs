using LibrarySystemAPI.Model;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace LibrarySystemAPI.DataContext.EntityConfigurations
{
    public class BookConfiguration : IEntityTypeConfiguration<Book>
    {
        public void Configure(EntityTypeBuilder<Book> builder)
        {
            builder.Property(b => b.Description)
                .IsRequired()
                .HasMaxLength(2000);

            builder.Property(b => b.Name)
                .IsRequired()
                .HasMaxLength(255);

            builder.HasOne<Author>(b => b.Author)
                .WithMany(a => a.Books)
                .HasForeignKey(b => b.AuthorId)
                .OnDelete(DeleteBehavior.SetNull);

            builder.HasMany(b => b.Genres)
                .WithMany(g => g.Books)
                .UsingEntity<Dictionary<string, object>>(
                    "BookGenres",
                    bg => bg
                        .HasOne<Genre>()
                        .WithMany()
                        .HasForeignKey("GenreId")
                        .HasConstraintName("FK_BookGenres_Genres_GenreId")
                        .OnDelete(DeleteBehavior.Cascade),
                    bg => bg
                        .HasOne<Book>()
                        .WithMany()
                        .HasForeignKey("BookId")
                        .HasConstraintName("FK_BookGenres_Books_BookId")
                        .OnDelete(DeleteBehavior.Cascade));
        }
    }
}