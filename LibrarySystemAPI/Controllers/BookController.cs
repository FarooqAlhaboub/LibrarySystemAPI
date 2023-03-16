using LibrarySystemAPI.Model;
using LibrarySystemAPI.Repository;
using Microsoft.AspNetCore.Mvc;

namespace LibrarySystemAPI.Controllers
{
    [ApiController]
    public class BookController : ControllerBase
    {

        private readonly IUnitOfWork _unitOfWork;
        private readonly ILogger<BookController> _logger;

        public BookController(IUnitOfWork unitOfWork, ILogger<BookController> logger)
        {
            _unitOfWork = unitOfWork;
            _logger = logger;
        }

        [HttpGet("/GetBooks")]
        public async Task<ActionResult> GetBooksAsync(int page, int pageSize = 20)
        {
            var books = await _unitOfWork.Books.GetBooksWithAuthorsAsync(page * pageSize, pageSize);
            return Ok(books);
        }

        [HttpGet("/GetBook")]
        public async Task<ActionResult> GetBookAsync(int bookId)
        {
            var book = await _unitOfWork.Books.GetAsync(bookId);
            if (book != null)
            {
                return Ok(book);
            }
            return NotFound(string.Format("Book with Id = {0} not found", bookId));
        }

        [HttpGet("/GetBookGenres")]
        public async Task<ActionResult> GetBookGenersAsync(int bookId)
        {
            var book = await _unitOfWork.Books.GetBookWithGenresAsync(bookId);
            if (book != null)
            {
                return Ok(book);
            }
            return NotFound(string.Format("Book with Id = {0} not found", bookId));
        }

        [HttpPost("/AddBook")]
        public async Task<ActionResult> AddBookAsync(Book book)
        {
            await _unitOfWork.Books.InsertAsync(book);
            await _unitOfWork.SaveAsync();
            if (book.BookId > 0)
                return Ok(book);
            return NotFound(string.Format("could Not Add Book with Name = {0} ", book.Name));
        }

        [HttpPut("/UpdateBook")]
        public async Task<ActionResult> UpdateBookAsync(int bookId, Book newbook)
        {
            var book = await _unitOfWork.Books.GetAsync(bookId);
            if (book != null)
            {
                book.Name = newbook.Name;
                book.Description = newbook.Description;
                book.Rating = newbook.Rating;
                book.Price = newbook.Price;
                await _unitOfWork.SaveAsync();
                return Ok(book);
            }
            return NotFound(string.Format("Book with Id = {0} Not Found", bookId));
        }

        [HttpPut("/ChangeBookAuthor")]
        public async Task<ActionResult> ChangeAuthorAsync(int bookId, int authorId)
        {
            var book = await _unitOfWork.Books.GetAsync(bookId);
            var author = await _unitOfWork.Authors.GetAsync(authorId);
            if (book != null && author != null)
            {
                book.AuthorId = author.AuthorId;
                book.Author = author;
                await _unitOfWork.SaveAsync();
                if (book.AuthorId == authorId)
                    return Ok(book);
            }
            return NotFound(string.Format("{0} with Id = {1} not found", book == null ? "Book" : "Author", book == null ? bookId : authorId));
        }

        [HttpPut("/UpdateBookGenres")]
        public async Task<ActionResult> UpdateGenres(int bookId, int[] genresList)
        {
            var book = await _unitOfWork.Books.GetBookWithGenresAsync(bookId);
            if (book != null)
            {
                await _unitOfWork.Books.UpdateBookGenresAsync(book, genresList);
                await _unitOfWork.SaveAsync();
                return Ok(book);
            }
            return NotFound(string.Format("Book with Id = {0} Not Found", bookId));
        }

        [HttpDelete("/DeleteBook")]
        public async Task<ActionResult> DeleteBookAsync(int bookId)
        {
            var book = await _unitOfWork.Books.GetAsync(bookId);
            if (book != null)
            {
                _unitOfWork.Books.Delete(book);
                await _unitOfWork.SaveAsync();
                var checkBook = await _unitOfWork.Books.GetAsync(bookId);
                if (checkBook == null)
                    return Ok(book);
            }
            return NotFound(string.Format("Book with Id = {0} Not Found", bookId));
        }

    }
}