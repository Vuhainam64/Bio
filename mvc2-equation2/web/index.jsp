<%-- 
    Document   : index
    Created on : Jan 12, 2023, 11:12:04 AM
    Author     : PHT
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Equation 1: ax^2 + bx + c = 0</h1>
        <hr/>
        <form action="equation1">
            Factor a:<br/>
            <input type="number" step="0.01" name="a" value="${model.a}"/><br/>
            Factor b:<br/>
            <input type="number" step="0.01" name="b" value="${model.b}"/><br/>
            Factor c:<br/>
            <input type="number" step="0.01" name="c" value="${model.c}"/><br/>
            <input type="submit" name="op" value="Solve" />
        </form>
        <!--chay phuong thuc getResult()-->
        Result: ${model.result}
    </body>
</html>
