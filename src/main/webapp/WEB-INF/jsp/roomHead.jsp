<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script type="application/javascript">
    function comfirm() {
        alert("请先登陆");
    }
</script>

<body>

<header role="banner">

    <nav class="navbar navbar-expand-md navbar-dark bg-light">
        <div class="container">
            <a class="navbar-brand" href="index.jsp">LuxuryHotel</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample05" aria-controls="navbarsExample05" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse navbar-light" id="navbarsExample05">
                <ul class="navbar-nav ml-auto pl-lg-5 pl-0">
                    <li class="nav-item">
                        <a class="nav-link active" href="index.jsp">主页</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="rooms.html" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">房间</a>
                        <div class="dropdown-menu" aria-labelledby="dropdown04">
                            <a class="dropdown-item" href="singerooms.jsp">单人间</a>
                            <a class="dropdown-item" href="rooms.jsp">双人间</a>
                            <a class="dropdown-item" href="rooms.jsp">豪华套房</a>
                            <a class="dropdown-item" href="rooms.jsp">风格套房</a>
                        </div>

                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="blog.jsp">博客</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="sys/food/orderMeal">订餐</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="sys/person/contact">联系我们</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="sys/food/an">管理员登录</a>
                    </li>
                    <c:if test="${not empty customername}">
                        <li class="nav-item">
                            <a class="nav-link" href="sys/person/roomOrder?name=${customername}">个人中心</a>
                        </li>
                    </c:if>
                    <c:if test="${empty customername}">
                        <li class="nav-item">
                            <a class="nav-link" onclick="comfirm()">个人中心</a>
                        </li>
                    </c:if>

                    <c:if test="${empty customername}">
                        <li class="nav-item">
                            <a class="nav-link" href="sys/customer/login">登录</a>
                        </li>
                    </c:if>
                    <c:if test="${not empty customername}">
                        <li class="nav-item">
                            <p class="nav-link" style="color: pink">你好，${customername}</p>
                        </li>
                    </c:if>
                </ul>

            </div>
        </div>
    </nav>
</header>
<!-- END header -->

</body>
</html>
