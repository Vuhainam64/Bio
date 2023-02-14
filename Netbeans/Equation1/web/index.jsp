<%-- 
    Document   : index
    Created on : Jan 9, 2023, 12:57:02 PM
    Author     : vuhai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <h1>Login</h1>
        <hr/>
        <form action="login">
            User: <input type="number" step="0.01" name="a" value="${a}"/><br/>            
            Password: <input type="number" step="0.01" name="b" value="${b}"/><br/>
            <input type="submit" name="op" value="Submit"/>

        </form>
    </body>
</html>
