<%--
    Document   : insertUser
    Created on : Jul 11, 2019, 8:01:34 PM
    Author     : DaL
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <!-- <link href="public/css/styleSign.css" rel="stylesheet" type="text/css"/> -->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <title>Host register</title>
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

        <form:form cssClass="form-inline login-form" method="POST" modelAttribute="user" action="${pageContext.request.contextPath}/doRegisterHost">
            <h3> Sign Up </h3>
            <table class="table table-borderless txtb table-sm" >
                <tr >
                    <td>USERNAME</td>
                    <td><form:input cssClass="input-group-sm mb-3 border border-white"  path="username" /></td>
                    <td><form:errors cssClass="input-group-sm mb-3 border border-white" path="username" /></td>
                </tr>
                <tr>
                    <td>PASSWORD</td>
                    <td><form:password cssClass="input-group-sm mb-3 border border-white" path="password" /></td>
                    <td><form:errors cssClass="input-group-sm mb-3 border border-white" path="password" /></td>
                </tr>
                <tr>
                    <td>FIRSTNAME</td>
                    <td><form:input cssClass="input-group-sm mb-3 border border-white"  path="firstname" /></td>
                    <td><form:errors cssClass="input-group-sm mb-3 border border-white" path="firstname" /></td>
                </tr>
                <tr>
                    <td>LASTNAME</td>
                    <td><form:input cssClass="input-group-sm mb-3 border border-white" path="lastname" /></td>
                    <td><form:errors cssClass="input-group-sm mb-3 border border-white" path="lastname" /></td>
                </tr>
                <tr>
                    <td>EMAIL</td>
                    <td><form:input cssClass="input-group-sm mb-3 border border-white" path="email" /></td>
                    <td><form:errors cssClass="input-group-sm mb-3 border border-white" path="email" /></td>
                </tr>
            </table>
        <tr><input class="btn btn-secondary" type="submit"></tr>

</form:form>

</body>
</html>