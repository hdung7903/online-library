<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="modal fade" id="insertBookModal" tabindex="-1" aria-labelledby="insertBookModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Add new book</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="${pageContext.request.contextPath}/admin/books/add" method="post">
                    <div>
                        <label for="title">Title:</label>
                        <input type="text" name="title" id="title" required />
                    </div>
                    <div>
                        <label for="author">Author:</label>
                        <input type="text" name="author" id="author" required />
                    </div>
                    <div>
                        <label for="publishedYear">Published Year:</label>
                        <input type="text" name="publishedYear" id="publishedYear" required />
                    </div>
                    <div>
                        <label for="genre">Genres:</label>
                        <c:forEach items="${genres}" var="genre">
                            <input type="checkbox" name="${genre.name}" value="${genre.id}" />
                            <label>${genre.name}</label>
                        </c:forEach>

                    </div>
                    <div>
                        <label for="thumbnail">Thumbnail:</label>
                        <input type="text" name="thumbnail" id="thumbnail" />
                    </div>
                    <div>
                        <label for="totalQuantity">Current Quantity:</label>
                        <input type="text" name="totalQuantity" id="totalQuantity" required />
                    </div>
                    <div>
                        <label for="isbn">ISBN:</label>
                        <input type="text" name="isbn" id="isbn" required />
                    </div>
                </form>
            </div>            
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Submit</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="insertBooksModal" tabindex="-1" aria-labelledby="insertBooksModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Add books data</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="input-group mb-3">
                    <input type="file" class="form-control" id="inputGroupFile02">
                    <label class="input-group-text" for="inputGroupFile02">Upload</label>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>