<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="row">
    <h1>Random Student Generator</h1>

    <form action="<c:url value="/question/create_headler.do" />" method="post">
        <div class="mb-3 mt-3">
            <label for="numStudents">Number of students:</label></p>
            <input type="number" class="form-control" id="numStudents" placeholder="Enter number of students you want create" name="numStudents" min="1" max="100">
        </div>
        <button type="submit" class="btn btn-outline-success" value="create"><i class="bi bi-check-lg"></i> Create</button>
    </form>

</div>