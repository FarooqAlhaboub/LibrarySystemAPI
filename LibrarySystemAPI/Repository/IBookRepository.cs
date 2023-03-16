using LibrarySystemAPI.Model;

namespace LibrarySystemAPI.Repository
{
    public interface IBookRepository : IGenericRepository<Book>
    {
        Task<IEnumerable<Book>> GetBooksWithAuthorsAsync(int pageIndex, int pageSize);
        Task<Book?> GetBookWithGenresAsync(int id);
        Task UpdateBookGenresAsync(Book book, int[] genresList);
    }
}
