<%-- 
    Document   : index
    Created on : Jan 12, 2023, 2:06:16 PM
    Author     : vuhai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculator</title>
    </head>
    <body>
        <h1>Calculator</h1>
        <hr/>
        <form action="controller" method="post">
            Num1:<br/>
            <input type="number" step="0.01" name="num1" value="${model.num1}"/><br/>            
            Num2:<br/>
            <input type="number" step="0.01" name="num2" value="${model.num2}"/><br/>
            <input type="submit" name="op" value="Add"/>
            <input type="submit" name="op" value="Sub"/>
            <input type="submit" name="op" value="Mul"/>
            <input type="submit" name="op" value="Div"/>

        </form>
        Result: ${model.result}
    </body>
</html>
