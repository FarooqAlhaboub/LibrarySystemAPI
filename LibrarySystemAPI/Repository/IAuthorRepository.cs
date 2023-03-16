using LibrarySystemAPI.Model;

namespace LibrarySystemAPI.Repository
{
    public interface IAuthorRepository : IGenericRepository<Author>
    {
        Task<Author?> GetAuthorWithBooksAsync(int id);
    }
}
