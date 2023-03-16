using LibrarySystemAPI.Model;
using LibrarySystemAPI.Repository;
using Microsoft.AspNetCore.Mvc;

namespace LibrarySystemAPI.Controllers
{
    [ApiController]
    public class AuthorController : Controller
    {
        private readonly IUnitOfWork _unitOfWork;
        private readonly ILogger<AuthorController> _logger;
        public AuthorController(IUnitOfWork unitOfWork, ILogger<AuthorController> logger)
        {
            _unitOfWork = unitOfWork;
            _logger = logger;
        }
        [HttpGet("/GetAuthors")]
        public async Task<ActionResult> GetAuthorsAsync()
        {
            var Authors = await _unitOfWork.Authors.GetAllAsync();
            return Ok(Authors);
        }

        [HttpGet("/GetAuthor")]
        public async Task<ActionResult> GetAuthorAsync(int AuthorId)
        {
            var Author = await _unitOfWork.Authors.GetAuthorWithBooksAsync(AuthorId);
            if (Author != null)
            {
                return Ok(Author);
            }
            return NotFound(string.Format("Author with Id = {0} Not Found", AuthorId));
        }

        [HttpPost("/AddAuthor")]
        public async Task<ActionResult> AddAuthorAsync(Author Author)
        {
            await _unitOfWork.Authors.InsertAsync(Author);
            await _unitOfWork.SaveAsync();
            if (Author.AuthorId > 0)
                return Ok(Author);
            return base.NotFound(string.Format("could Not Add Author with Name = {0} ", (object)Author.Name));
        }

        [HttpPut("/UpdateAuthor")]
        public async Task<ActionResult> UpdateAuthorAsync(int AuthorId, Genre newAuthor)
        {
            var Author = await _unitOfWork.Authors.GetAsync(AuthorId);
            if (Author != null)
            {
                Author.Name = newAuthor.Name;
                await _unitOfWork.SaveAsync();
                return Ok(Author);
            }
            return NotFound(string.Format("Author with Id = {0} Not Found", AuthorId));
        }

        [HttpDelete("/DeleteAuthor")]
        public async Task<ActionResult> DeleteAuthorAsync(int AuthorId)
        {
            var Author = await _unitOfWork.Authors.GetAuthorWithBooksAsync(AuthorId);
            if (Author != null)
            {
                _unitOfWork.Authors.Delete(Author);
                await _unitOfWork.SaveAsync();
                return Ok(Author);
            }
            return NotFound(string.Format("Author with Id = {0} Not Found", AuthorId));
        }
    }
}
