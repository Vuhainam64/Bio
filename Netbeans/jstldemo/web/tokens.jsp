<%-- 
    Document   : tokens
    Created on : Mar 13, 2023, 2:13:57 PM
    Author     : vuhai
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
        <h1>For Tokens</h1>
        <c:forTokens var="token" items="Today, I learn JSTL" delims=",">
            ${token}</br>
        </c:forTokens>
    </body>
</html>
