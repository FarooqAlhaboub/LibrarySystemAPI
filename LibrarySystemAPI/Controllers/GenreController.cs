using LibrarySystemAPI.Repository;
using Microsoft.AspNetCore.Mvc;

namespace LibrarySystemAPI.Controllers
{
    [ApiController]
    public class GenreController : Controller
    {
        private readonly IUnitOfWork _unitOfWork;
        private readonly ILogger<AuthorController> _logger;
        public GenreController(IUnitOfWork unitOfWork, ILogger<AuthorController> logger)
        {
            _unitOfWork = unitOfWork;
            _logger = logger;
        }
        [HttpGet("/GetGenres")]
        public async Task<ActionResult> GetGenresAsync()
        {
            var Genres = await _unitOfWork.Genres.GetAllAsync();
            return Ok(Genres);
        }
    }
}
