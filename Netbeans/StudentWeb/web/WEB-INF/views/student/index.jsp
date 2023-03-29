<%-- 
    Document   : index
    Created on : Mar 6, 2023, 10:11:10 PM
    Author     : vuhai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Student List</title>
    </head>
    <body>
        <h1>Student List</h1>
        <table class="table table-striped">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Gender</th>
                <th>DOB</th>
                <th></th>
            </tr>
            <c:forEach var="student" items="${list}" varStatus="loop">
                <tr>
                    <td>${student.id}</td>
                    <td>${student.name}</td>
                    <td>${student.gender?"Female":"Male"}</td>
                    <td>${student.dob}</td>
                    <td></td>
                    <td>
                        <a href="<c:url value='/student/update?id=${student.id}' />"><i class="bi bi-pencil-square"></i>Update</a> | 
                        <a href="<c:url value='/student/delete?id=${student.id}' />"><i class="bi bi-trash3"></i>Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <a href="<c:url value='/student/create.do' />">Create New Student</a>
    </body>
</html>