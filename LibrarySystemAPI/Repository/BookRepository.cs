using LibrarySystemAPI.DataContext;
using LibrarySystemAPI.Model;
using Microsoft.EntityFrameworkCore;

namespace LibrarySystemAPI.Repository
{
    public class BookRepository : GenericRepository<Book>, IBookRepository
    {
        public BookRepository(LibrarySystemContext context) : base(context)
        {
        }

        public async Task<IEnumerable<Book>> GetBooksWithAuthorsAsync(int pageIndex, int pageSize = 20)
        {
            return await LibraryContext.Books
                            .Include(b => b.Author)
                            .Include(b => b.Genres)
                            .Skip(pageIndex).Take(pageSize).ToListAsync();
        }

        public async Task UpdateBookGenresAsync(Book book, int[] genresList)
        {
            foreach (var genre in book.Genres.Where(g => !genresList.Contains(g.GenreId)).ToList())
            {
                book.Genres.Remove(genre);
            }
            var genres = await LibraryContext.Genres.Where(g => genresList.Contains(g.GenreId)).ToListAsync();
            if (genres.Count > 0)
            {
                book.Genres = genres;
            }
        }

        public async Task<Book?> GetBookWithGenresAsync(int id)
        {
            return await LibraryContext.Books.Include(b => b.Genres).SingleOrDefaultAsync(b => b.BookId == id);
        }

        public LibrarySystemContext LibraryContext
        {
            get { return Context as LibrarySystemContext; }
        }
    }
}
