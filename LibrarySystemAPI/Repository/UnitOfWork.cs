using LibrarySystemAPI.Controllers;
using LibrarySystemAPI.DataContext;
using Microsoft.EntityFrameworkCore;

namespace LibrarySystemAPI.Repository
{
    public class UnitOfWork : IUnitOfWork, IDisposable
    {
        private readonly LibrarySystemContext _context;
        private readonly ILogger<BookController> _logger;
        public UnitOfWork(LibrarySystemContext context, ILogger<BookController> logger)
        {
            _context = context;
            _logger = logger;
            Books = new BookRepository(_context);
            Authors = new AuthorRepository(_context);
            Genres = new GenresRepository(_context);
        }

        public IBookRepository Books { get; private set; }
        public IAuthorRepository Authors { get; private set; }
        public IGenresRepository Genres { get; private set; }

        public async Task<int> SaveAsync()
        {
            try
            {
                return await _context.SaveChangesAsync();
            }
            catch (DbUpdateException ex)
            {
                _logger.LogError(ex, "SaveChangesAsyncError");
            }
            return 0;
        }
        public void Dispose()
        {
            _context.Dispose();
        }
    }
}
