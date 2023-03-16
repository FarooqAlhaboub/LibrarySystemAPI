using System.ComponentModel.DataAnnotations;

namespace LibrarySystemAPI.Model
{
    public class Genre
    {
        public Genre()
        {
            Books = new HashSet<Book>();
        }
        [Key]
        public int GenreId { get; set; }

        public string Name { get; set; }

        public virtual ICollection<Book> Books { get; set; }
    }
}
