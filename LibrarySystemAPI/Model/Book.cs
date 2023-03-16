using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace LibrarySystemAPI.Model
{
    public class Book
    {
        public Book()
        {
            Genres = new HashSet<Genre>();
        }
        [Key]
        public int BookId { get; set; }

        public string Name { get; set; }

        public string Description { get; set; }

        public int Rating { get; set; }

        [Column(TypeName = "MONEY")]
        public decimal Price { get; set; }
        public virtual Author? Author { get; set; }

        public int? AuthorId { get; set; }

        public virtual ICollection<Genre> Genres { get; set; }

    }
}
