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
        <h1>Toy CRUD</h1>
        <hr/>
        <table border="1" cellspacing="0" cellpadding="4">
            <tr>
                <th>STT</th>
                <th>ID</th>
                <th>Name</th>                
                <th>Price</th>
                <th>EcpDate</th>
                <th>BrainID</th>
                <th>Operation</th>
            </tr>
            <c:forEach var="toy" items="${list}" varStatus="loop">
                <tr>
                    <td>${loop.count}</td>
                    <td>${toy.id}</td>
                    <td>${toy.name}</td>
                    <td>${toy.price}</td>
                    <td>${toy.expDate}</td>
                    <td>${toy.brandId}</td>
                    <td>
                        <a href="<c:url value="/toy?op=edit&id=${toy.id}"/>">Edit</a> | 
                        <a href="<c:url value="/toy?op=delete&id=${toy.id}"/>">Delete</a>

                    </td>

                </tr>
            </c:forEach> 
        </table>

    </body>
</html>
