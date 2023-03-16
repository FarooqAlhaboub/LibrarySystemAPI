using System.ComponentModel.DataAnnotations;

namespace LibrarySystemAPI.Model
{
    public class Author
    {
        public Author()
        {
            Books = new HashSet<Book>();
        }
        [Key]
        public int AuthorId { get; set; }

        public string Name { get; set; }

        public virtual ICollection<Book> Books { get; set; }


    }
}
