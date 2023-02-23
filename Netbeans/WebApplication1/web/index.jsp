<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student List Generator</title>
</head>
<body>
    <h1>Student List Generator</h1>
    <form action="StudentServlet">
        <label for="numStudents">Number of Students:</label>
        <input type="number" id="numStudents" name="numStudents">
        <br><br>
        <button type="submit">Generate</button>
    </form>
</body>
</html>
