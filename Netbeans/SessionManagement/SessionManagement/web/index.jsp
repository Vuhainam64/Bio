<%-- 
    Document   : index
    Created on : Mar 2, 2023, 1:59:02 PM
    Author     : PHT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Choose Items</h1>
    <ht/>
    <form action="<c:url value="/cart" />">
        Select an item:
        <select name="id">
            <option value="1">Apple</option>
            <option value="2">Banana</option>
            <option value="3">Orange</option>
        </select><br/>
        <button type="submit" name="op" value="add">Add to Cart</button>
    </form>
    <hr/>
    <table border="1" cellspacing="0" cellpadding="4">
        <tr>
            <th>No.</th>
            <th>Id</th>
            <th>Name</th>
            <th>Unit Price</th>
            <th>Quantity</th>
            <th>Cost</th>
        </tr>
        <c:forEach var="item" items="${sessionScope.cart.items}" varStatus="loop">
            <tr>
                <td>${loop.count}</td>
                <td>${item.product.id}</td>
                <td>${item.product.name}</td>
                <td>${item.product.unitPrice}</td>
                <td>${item.quantity}</td>
                <td>${item.cost}</td>
                <td>
                    <a href="">Update</a>
                    <a href="<c:url value="/cart?op=delete?&id=${item.product.id}">Edit</a>

                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
