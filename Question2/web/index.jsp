<%-- 
    Document   : index
    Created on : Jan 31, 2023, 8:10:06 AM
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
            Frist: <input type="number" step="0.01" name="num1" value="${model.num1}"/><br/>            
            Second: <input type="number" step="0.01" name="num2" value="${model.num2}"/><br/>
            Operator: 
            <select name="op">
                <option value="Add">+</option>
                <option value="Sub">-</option>
                <option value="Mul">*</option>
                <option value="Div">/</option>
            </select><br/>
            <input type="submit" value="Compute"/><br/>
            Result: ${model.result}
        </form>
    </body>
</html>
