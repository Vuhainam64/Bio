<%-- 
    Document   : counter
    Created on : Mar 13, 2023, 2:05:52 PM
    Author     : vuhai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test ="${count == null}">
    <c:set var="count" value="0" scope="application"/>
</c:if>
<c:if test ="${count != null}">
    <c:set var="count" value="${count + 1}" scope="application"/>
</c:if>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        Count: ${count}
    </body>
</html>
