<%-- 
    Document   : index
    Created on : Jan 9, 2023, 2:27:05 PM
    Author     : vuhai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Method Test</h1>
        <hr/>
        <form action="processor">
            <input type="submit" value="Do Get" />
        </form>
        <form action="processor" method="post">
            <input type="submit" value="Do Post" />
        </form>
        Result: ${result}

    </body>
</html>
