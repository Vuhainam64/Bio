<%-- 
    Document   : index
    Created on : Feb 6, 2023, 10:09:20 AM
    Author     : PHT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<head></head>
<body class="py-4 vsc-initialized">
    <div class="container">


        <div class="divider div-transparent my-4"></div>

        <div class="row">
            <div class="col text-center">
                <div class="d-grid gap-2">
                    <a href="<c:url value="/question/create.do" />" class="btn btn-lg btn-primary d-block">Question 1</a>
                    <a href="<c:url value="/question/login.do" />" class="btn btn-lg btn-outline-light d-block">Question 2</a>
                </div>

                <!-- pagination -->
                <nav>
                    <ul class="pagination justify-content-center mb-0">

                        <li class="page-item disabled" aria-disabled="true">
                            <span class="page-link">« Previous</span>
                        </li>


                        <li class="page-item">
                            <a style="background-color: transparent;" class="page-link" href="#" rel="next">Next »</a>
                        </li>
                    </ul>
                </nav>

            </div>
        </div>
        <div class="divider div-transparent my-4"></div>
    </div>
</body></html>