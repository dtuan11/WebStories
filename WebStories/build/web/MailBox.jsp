<%-- 
    Document   : MailBox
    Created on : Mar 11, 2024, 7:50:36 PM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>Users / Profile - NiceAdmin Bootstrap Template</title>

        <link href="./assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" >
        <link href="./assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="./assets/css/style.css" rel="stylesheet">
        <link rel="stylesheet" href="./css/confirmbox.css">
        <!--<link rel="stylesheet" href="./css/confirmbox_1.css">-->
        <style>
            .profile .profile-card img {
                max-width: 300px;
            }
            .profile .profile-edit img {
                max-width: 300px;
            }
        </style>
    </head>
    <body>
        <jsp:include page="Menu.jsp"></jsp:include>
        <table>
            <tr>
                <td>Tiêu đề</td>
                <td>Nội dung</td>
                <td>Ngày gửi</td>
            </tr>
        <c:forEach items="${mailbox}" var="m">
            <tr>
                <td>${m.title}</td>
                <td>${m.detail}</td>
                <td>${m.responseTime}</td>
            </tr>
            </c:forEach>
        </table>
    </body>
</html>
