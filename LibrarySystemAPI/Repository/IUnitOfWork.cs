namespace LibrarySystemAPI.Repository
{
    public interface IUnitOfWork
    {
        IBookRepository Books { get; }
        IAuthorRepository Authors { get; }
        IGenresRepository Genres { get; }
        Task<int> SaveAsync();
    }
}
