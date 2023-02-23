<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student List</title>
</head>
<body>
    <h1>Student List</h1>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Gender</th>
                <th>Date of Birth</th>
            </tr>
        </thead>
        <tbody>
            <% for (Student student : (List<Student>) request.getAttribute("students")) { %>
                <tr>
                    <td><%= student.getId() %></td>
                    <td><%= student.getName() %></td>
                    <td><%= student.isMale() ? "Male" : "Female" %></td>
                    <td><%= student.getDob() %></td>
                </tr>
            <% } %>
        </tbody>
    </table>
</body>
</html>
