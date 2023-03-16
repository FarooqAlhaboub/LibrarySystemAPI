using LibrarySystemAPI.DataContext;
using LibrarySystemAPI.Model;
using Microsoft.EntityFrameworkCore;

namespace LibrarySystemAPI.Repository
{
    public class AuthorRepository : GenericRepository<Author>, IAuthorRepository
    {
        public AuthorRepository(LibrarySystemContext context) : base(context)
        {
        }

        public async Task<Author?> GetAuthorWithBooksAsync(int id)
        {
            return await LibraryContext.Authors
                    .Include("Books").SingleOrDefaultAsync(a => a.AuthorId == id);
        }

        public LibrarySystemContext LibraryContext
        {
            get { return Context as LibrarySystemContext; }
        }
    }
}
