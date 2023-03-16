using LibrarySystemAPI.DataContext;
using LibrarySystemAPI.Model;

namespace LibrarySystemAPI.Repository
{
    public class GenresRepository : GenericRepository<Genre>, IGenresRepository
    {
        public GenresRepository(LibrarySystemContext context) : base(context)
        {
        }
    }
}
