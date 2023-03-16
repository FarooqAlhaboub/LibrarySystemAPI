function fetchBooks(page = 1, pageSize = 20) {
    Swal.fire({
        title: 'Getting Data!',
        didOpen: () => {
            Swal.showLoading()
            fetch(`${serviceUrl}GetBooks?page=${page - 1}&pageSize=${pageSize}`)
                .then((response) => {
                    if (!response.ok) {
                        throw new Error(response.statusText)
                    }
                    return response.json()
                })
                .then((responseJSON) => {
                    $('#nextBtn').prop('disabled', (responseJSON.length != pageSize));
                    $('#prevBtn').prop('disabled', (page <= 1));
                    if (responseJSON.length > 0) {
                        $("#booksTable > tbody").empty();
                        $('#pageNumber').val(page);
                    } else if (page > 1){
                        fetchBooks(--page, pageSize)
                    }
                    $(responseJSON).each(function (i, item) {
                        var tr = `<tr><td>${item.name}</td>
                    <td>${item.author.name}</td>
                    <td>${item.description}</td>
                    <td>${item.rating}</td>
                    <td>${item.price} $</td><td>`;
                        $(item.genres).each(function (i, item) {
                            tr += `<button class='btn btn-sm' style='display:inline-block;'>${item.name}</button>`;
                        });
                        tr += `<button type="button" class="btn btn-info" onclick="getGenres(${item.bookId});" style="float: right;">+</button></td>`;
                        tr += `<td><button id='btn${i}' class='btn btn-primary btn-sm'>Edit</button>
                    <button class='btn btn-danger btn-sm' onclick='DeleteBook(${item.bookId})'>Delete</button>
                    </td></tr>`;
                        $("#booksTable > tbody").append(tr);
                        $(`#btn${i}`).on("click", function () { EditBook(item); });
                    })
                    showTable();
                    Swal.close();
                })
                .catch(error => {
                    Swal.hideLoading();
                    Swal.showValidationMessage(
                        `Request failed: ${error}`
                    )
                });
        },
        allowOutsideClick: () => !Swal.isLoading()
    });
}

function EditBook(book) {
    $('#formLable').html('Update Book Information');
    $('#BookId').val(book.bookId);
    $('#Input_Name').val(book.name);
    $('#Input_Author').val(book.authorId);
    $('#Input_Description').val(book.description);
    $('#Input_Rating').val(book.rating);
    $('#Input_Price').val(book.price);
    showForm();
    onBlur({ target: $('#Input_Price')[0] })
}

function DeleteBook(Id) {
    Swal.fire({
        title: `you are about to Delete Book#${Id}?`,
        text: "You won't be able to revert this!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Yes, delete it!'
    }).then((result) => {
        var act = `DeleteBook?BookId=${Id}`;
        var method = `Delete`;
        if (result.isConfirmed) {
            Swal.fire({
                title: 'Deleting Data!',
                didOpen: () => {
                    Swal.showLoading()
                    fetch(`${serviceUrl}${act}`, {
                        method: method,
                        headers: {
                            'Accept': 'application/json',
                            'Content-Type': 'application/json'
                        }
                    })
                        .then((response) => {
                            if (!response.ok) {
                                throw new Error(response.statusText)
                            }
                            return response.json()
                        })
                        .then((responseJSON) => {
                            Swal.close();
                            Swal.fire({
                                title: 'Deleted!',
                                text: `Book ${Id} Deleted!`,
                                icon: 'success',
                                willClose: () => {
                                    fetchBooks(page, pageSize)
                                }
                            });
                        })
                        .catch(error => {
                            Swal.hideLoading();
                            Swal.showValidationMessage(
                                `Request failed: ${error}`
                            )
                        });
                },
                allowOutsideClick: () => !Swal.isLoading()
            });
        }
    })
}

function callStackApi() {
    Swal.fire({
        title: 'Getting Data!',
        didOpen: () => {
            Swal.showLoading()
            fetch(`https://api.stackexchange.com/2.3/questions?page=1&pagesize=50&order=desc&sort=activity&site=stackoverflow`)
                .then((response) => {
                    if (!response.ok) {
                        throw new Error(response.statusText)
                    }
                    return response.json()
                })
                .then((responseJSON) => {
                    alert(JSON.stringify(responseJSON));
                    Swal.fire({
                        title: `${responseJSON.items[0].owner.display_name}`,
                        imageUrl: responseJSON.items[0].owner.profile_image
                    })
                })
                .catch(error => {
                    Swal.hideLoading();
                    Swal.showValidationMessage(
                        `Request failed: ${error}`
                    )
                });
        },
        allowOutsideClick: () => !Swal.isLoading()
    });
}

function postBook(e) {
    e.preventDefault();
    if ($('#BookId').val() == '') $('#BookId').val(0)
    if ($('#bookForm').valid()) {
        onFocus({ target: $('#Input_Price')[0] })
        const data = {};
        for (const pair of new FormData($('#bookForm')[0])) {
            data[pair[0]] = pair[1];
        }
        data['auther']= null;
        data['genres'] = [];
        var act = 'AddBook';
        var method = 'POST';
        if ($('#BookId').val() > 0) {
            act = `UpdateBook?bookId=${$('#BookId').val()}`;
            method = 'PUT';
        }
        Swal.fire({
            title: 'Updating Data!',
            didOpen: () => {
                Swal.showLoading()
                fetch(`${serviceUrl}${act}`, {
                    method: method,
                    headers: {
                        'Accept': 'application/json',
                        'Content-Type': 'application/json'
                    },
                    body: `${JSON.stringify(data)}`
                })
                    .then((response) => {
                        if (!response.ok) {
                            throw new Error(response.statusText)
                        }
                        return response.json();
                    })
                    .then((responseJSON) => {
                        Swal.close();
                        Swal.fire({
                            title: 'Saved!',
                            text: `Your Book ${responseJSON.bookId} has been Updated!`,
                            icon: 'success',
                            willClose: () => {
                                fetchBooks(page, pageSize)
                            }
                        });
                    })
                    .catch(error => {
                        Swal.hideLoading();
                        Swal.showValidationMessage(
                            `Request failed: ${error}`
                        )
                    });
            },
            allowOutsideClick: () => !Swal.isLoading()
        });
    }
}


function updateBookGenres(e) {
    e.preventDefault();
    var Id = $('#GenresBookID').val();
    if (Id > 0) {
        var act = `UpdateBookGenres?bookId=${Id}`;
        var method = 'PUT';
        Swal.fire({
            title: 'Updating Data!',
            didOpen: () => {
                Swal.showLoading()
                fetch(`${serviceUrl}${act}`, {
                    method: method,
                    headers: {
                        'Accept': 'application/json',
                        'Content-Type': 'application/json'
                    },
                    body: `${JSON.stringify($('#genresList').val())}`
                })
                    .then((response) => {
                        if (!response.ok) {
                            throw new Error(response.statusText)
                        }
                        Swal.close();
                        Swal.fire({
                            title: 'Saved!',
                            text: `Your Book ${Id} Genres Updated!`,
                            icon: 'success',
                            willClose: () => {
                                fetchBooks(page, pageSize)
                            }
                        });
                    })
                    .catch(error => {
                        Swal.hideLoading();
                        Swal.showValidationMessage(
                            `Request failed: ${error}`
                        )
                    });
            },
            allowOutsideClick: () => !Swal.isLoading()
        });
    }
}


function showTable() {
    $("#bookDiv").show(500).animate({ left: 0 });
    $("#form").hide(500).animate({ right: 0 });
    $("#genresForm").hide(500).animate({ right: 0 });
    resetForm();
}
function showForm(isNew = false) {
    if (isNew) resetForm();
    $("#bookDiv").hide(500).animate({ right: 0 });
    $("#form").show(500).animate({ left: 0 });
    $("#genresForm").hide(500).animate({ right: 0 });
}
function showgenresForm() {
    $("#bookDiv").hide(500).animate({ right: 0 });
    $("#form").hide(500).animate({ right: 0 });
    $("#genresForm").show(500).animate({ left: 0 });
}

function fetchAuthors() {
    fetch(`${serviceUrl}GetAuthors`)
        .then((response) => {
            if (!response.ok) {
                throw new Error(response.statusText)
            }
            return response.json()
        })
        .then((responseJSON) => {
            if (responseJSON.length > 0)
                $("#Input_Author").empty();
            $("#Input_Author").append('<option value=""> -- Select Author -- </option>');
            $(responseJSON).each(function (i, item) {
                let op = `<option value='${item.authorId}'>${item.name}</option>`;
                $("#Input_Author").append(op);
            })
        })
        .catch(error => {
            Swal.fire('Authors List!', `Request failed: ${error}.`, 'error');
        });
}

function fetchGenres() {
    fetch(`${serviceUrl}GetGenres`)
        .then((response) => {
            if (!response.ok) {
                throw new Error(response.statusText)
            }
            return response.json()
        })
        .then((responseJSON) => {
            if (responseJSON.length > 0)
                $("#genresList").empty();
            $(responseJSON).each(function (i, item) {
                let op = `<option value='${item.genreId}'>${item.name}</option>`;
                $("#genresList").append(op);
            })
        })
        .catch(error => {
            Swal.fire('Genres List!', `Request failed: ${error}.`, 'error');
        });
}

function getGenres(Id) {
    $("#GenresBookID").val(Id);
    $('#genresList option')
        .each(function () {
            $(this).prop('selected', false);
        });
    fetch(`${serviceUrl}GetBookGenres?BookId=${Id}`)
        .then((response) => {
            if (!response.ok) {
                throw new Error(response.statusText)
            }
            return response.json()
        })
        .then((responseJSON) => {
            $(responseJSON.genres).each(function (i, item) {
                $('#genresList option[value="' + item.genreId + '"]').prop('selected', true);
            })
            $('#genresList').bootstrapDualListbox('refresh', true);
            showgenresForm();
        })
        .catch(error => {
            Swal.fire('Genres List!', `Request failed: ${error}.`, 'error');
        });
}

function resetForm() {
    $('#bookForm')[0].reset();
    $('#BookId').val(0);
}