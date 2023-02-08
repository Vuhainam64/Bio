<%-- 
    Document   : main
    Created on : Feb 2, 2023, 12:51:24 PM
    Author     : vuhai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Layout Demo</title>
    </head>
    <body>
        <h1>Layout Demo</h1>
        <a href="<c:url value="/"/>">Home</a> | 
        <a href="<c:url value="/home/aboutus.do"/>">About Us</a> | 
        
        <hr/>
        <!--view-->
        <jsp:include page="/WEB-INF/views/${controller}/${action}.jsp" />
        <hr/>
        Copyright &copy; by FPT Students
    </body>
</html>
