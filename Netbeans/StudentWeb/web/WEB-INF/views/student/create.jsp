<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Student</title>
</head>
<body>
    <h1>Create Student</h1>
    <form method="get" action="<c:url value="/student/create_handler.do" />">
        <label for="name">Name:</label>
        <input type="text" name="name" id="name" value="${student.name}" required><br><br>
        
        <label for="gender">Gender:</label>
        <input type="radio" name="gender" id="male" value="Male" >
        <label for="male">Male</label>
        <input type="radio" name="gender" id="female" value="Female">
        <label for="female">Female</label><br><br>
        
        <label for="dob">Date of Birth:</label>
        <input type="date" name="dob" id="dob" value="${student.dob}" required><br><br>
        
        <input type="submit" value="Create">
    </form>
</body>
</html>
