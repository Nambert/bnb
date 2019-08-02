<%--
    Document   : viewMyStorages
    Created on : Jul 22, 2019, 6:53:00 PM
    Author     : Haris
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>

            *{
                margin: 0;
                padding: 0;
                text-decoration: none;
                font-family: montserrat;
                box-sizing: border-box;

            }

            body {
                font-size: 14px;
                line-height: 1.8;
                color: #222;
                font-weight: 400;
                font-family: 'Montserrat';
                background-image:url("${pageContext.request.contextPath}/public/nikita-tikhomirov-TdNMf8iQioQ-h_jyerpuib-1946x2315.jpg");
                height: 480px;
                background-repeat: no-repeat;
                background-size: cover;
                -moz-background-size: cover;
                -webkit-background-size: cover;
                -o-background-size: cover;
                -ms-background-size: cover;
                background-position: center center;
                padding: 115px 0; }



            .login-form{
                width: 360px;
                background: #ffffff;
                padding: 80px 40px;
                border-radius: 10px;
                position: absolute;
                left: 50%;
                top: 50%;
                transform: translate(-50%,-50%);
            }
            .txtb{

                position: relative;
                margin: 30px 0;

            }


        </style>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </head>
    <body>
        <form class="login-form">
            <table class="table table-sm">
                <thead class="thead-dark">
                    <tr>
                        <th>
                            Address
                        </th>
                        <th>
                            Postal Code
                        </th>
                        <th>
                            Available Space
                        </th>
                        <th>
                            Action
                        </th>
                    </tr>
                </thead>
                <th>

                </th>
                <c:forEach var="storages" items="${mystorages}">
                    <tr>
                        <td>${storages.adress}</td>
                        <td>${storages.postalCode}</td>
                        <td>${storages.space}</td>
                        <td>
                            <button class="btn btn-secondary">
                                <a href="${pageContext.request.contextPath}/host/delete/${storages.id}">Delete</a>
                            </button>
                        </td>
                    </tr>
                </c:forEach>
                    <tr><td><button class="btn btn-secondary">
                    <a href="${pageContext.request.contextPath}/host/loadHost">Back</a>
                </button>
                        <td></tr>    
            </table></form>
    </body>
</html>
