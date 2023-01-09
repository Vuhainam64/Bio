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
        <title>Calculator Page</title>
    </head>
    <body>
        <h1>Calculator</h1>
        <hr/>
        <form action="calculator">
            Num1:<br/>
            <input type="text" name="num1"/><br/>            
            Num2:<br/>
            <input type="text" name="num2"/><br/>
            <input type="submit" name="op" value="Add"/>
            <input type="submit" name="op" value="Sub"/>
        </form>
        Result: ${ketqua}
    </body>
</html>
