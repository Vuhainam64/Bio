<%-- 
    Document   : toy
    Created on : Feb 3, 2023, 9:01:20 PM
    Author     : vuhai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Brand CRUD</h1>
        <hr/>
        <table>
            <c:forEach var="brand" items="${list}">
                <tr>
                    <td>${brand.id}</td>
                    <td>${brand.name}</td>

                </tr>
            </c:forEach> 
        </table>

    </body>
</html>
