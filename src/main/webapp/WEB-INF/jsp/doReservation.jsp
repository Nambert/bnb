<%--
    Document   : doReservation
    Created on : Jul 31, 2019, 3:21:48 PM
    Author     : Kosta
--%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
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
                background: #f1f1f1;
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
    </head>
    <body>
        <form:form cssClass="form-inline login-form" method="POST" modelAttribute="reservation" action="${pageContext.request.contextPath}/client/doReserve">
            <table class="table table-bordeless">
                <thead class="thead-dark">
                    <tr>
                        <td>
                            Address: ${storage.adress}
                        </td>
                    </tr>
                </thead>

                <tr>
                    <td>
                        Starts: ${reservation.start}
                    </td>
                </tr>


                <tr>
                    <td>

                        Ends: ${reservation.end}
                    </td>
                </tr>


                <tr>
                    <td>

                        Amount of luggage: ${reservation.amount}
                    </td>
                </tr>

                <thead class="thead-dark">
                    <tr>
                        <td>

                            Cost:  ${reservation.cost}
                        </td>
                    </tr>
                </thead>
            </table>
            <input class="btn btn-secondary" type="submit" value="Finalize your Reservation!">
        </form:form>
    </body>
</html>
