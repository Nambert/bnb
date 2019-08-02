<%-- 
    Document   : viewMyReservations
    Created on : Aug 2, 2019, 4:51:23 PM
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

            td{background-color:#ffffff
                }

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
        <table class="table table-bordeless">
                <thead class="thead-dark">
                    
                  <tr>
                <th>
                    Address
                </th>
                <th>
                    Starts
                </th>
                <th>
                    Ends
                </th>
                <th>
                    Amount of luggage
                </th>
                <th>
                    Cost
                </th>
               
            </tr>
            <c:forEach var="reservations" items="${myreservations}">
                <tr>
                    <td>${reservations.storageId.adress}</td>
                    <td>${reservations.start}</td>
                    <td>${reservations.end}</td>
                    <td>${reservations.amount}</td>
                    <td>${reservations.cost}</td>
                    
                </tr> 
            </c:forEach>
               <button class="btn btn-secondary">
                    <a href="${pageContext.request.contextPath}/client/loadClient">Back</a>
                </button>
                       
                </thead>
            </table>
    </body>
</html>
