<%-- 
    Document   : main
    Created on : Feb 2, 2023, 12:51:25 PM
    Author     : PHT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excercise 2</title>
        <!-- Latest compiled and minified CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Latest compiled JavaScript -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <link href="<c:url value="/css/site.css" />" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../../css/site.css" rel="stylesheet" type="text/css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="preconnect" href="https://cdnjs.cloudflare.com/">
        <link rel="preconnect" href="https://fonts.gstatic.com/">
    </head>
    <body>
        <div class="container">
            <!--header-->
            <div class="row">
                <div class="col text-center text-white">
                    <img class="img-thumbnail rounded-circle" src="<c:url value="/images/avatar.jpeg" />" alt="J2TEAM" width="150" height="150">
                    <h1 class="mt-3">Exercise 2</h1>

                </div>
            </div>
        </div>
        <!--view-->
        <div class="row">
            <div class="col">
                <jsp:include page="/WEB-INF/views/${controller}/${action}.jsp" />
            </div>
        </div>
        <!--footer-->
        <footer class="text-center text-white">
            © 2023 <strong>FPT School</strong>. All rights reserved.
        </footer>
    </div>

</body>
</html>
