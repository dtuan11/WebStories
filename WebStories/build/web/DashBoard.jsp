<%-- 
    Document   : DashBoard
    Created on : Feb 23, 2024, 10:24:18 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <link href="./assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" >
        <link href="./assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="./assets/css/style.css" rel="stylesheet">
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
        <aside style="margin-top: 46px" id="sidebar" class="sidebar">
            <ul class="sidebar-nav" id="sidebar-nav">
                <li class="nav-item">
                    <i class="bi bi-grid"></i>
                    <span>Dashboard</span>
                </li><!-- End Dashboard Nav -->   
                <li class="nav-item">
                    <a class="nav-link " href="profile">
                        <i class="bi bi-person"></i>
                        <span>Profile</span>
                    </a>
                </li><!-- End Profile Page Nav -->     
                <c:if test="${sessionScope.user.roldID==1}">
                    <li class="nav-item">
                        <a class="nav-link collapsed" href="postbook">
                            <i class="bi bi-envelope"></i>
                            <span>Ðăng truyện</span>
                        </a>
                    </li><!-- End Contact Page Nav -->
                    <li class="nav-item">
                        <a class="nav-link collapsed" href="mylist?creator=${user.userID}">
                            <i class="bi bi-envelope"></i>
                            <span>Danh sách truyện</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link collapsed" href="managerchapter?creator=${user.userID}">
                            <i class="bi bi-eraser"></i>
                            <span>Quản lý chapter</span>
                        </a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.user.roldID==0}">
                    <li class="nav-item">
                        <a class="nav-link collapsed" href="manageraccount">
                            <i class="bi bi-envelope"></i>
                            <span>Quản lý tài khoản</span>
                        </a>
                    </li>
                </c:if>


            </ul>

        </aside><!-- End Sidebar-->


    </body>
</html>
