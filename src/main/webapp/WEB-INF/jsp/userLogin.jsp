<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <%@include file="/common/head.jsp"%>
    <title>用户登录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- Custom Theme files -->
    <link href="${ctx}/css/bootstrap2.css" type="text/css" rel="stylesheet" media="all">
    <link href="${ctx}/css/style2.css" type="text/css" rel="stylesheet" media="all">
    <link href="${ctx}/css/font-awesome.css" rel="stylesheet"> <!-- font-awesome icons -->
    <!-- //Custom Theme files -->
    <!-- js -->
    <script src="${ctx}/js/jquery-2.2.3.min.js"></script>
    <!-- //js -->
    <!-- web-fonts -->
    <link href="http://fonts.googleapis.com/css?family=Berkshire+Swash" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Yantramanav:100,300,400,500,700,900" rel="stylesheet">
    <!-- //web-fonts -->
</head>

<body>
<div class="container">
    <ol class="breadcrumb w3l-crumbs">
        <li><a href="index"><i class="fa fa-home"></i> 主页</a></li>
        <li class="active">登录</li>
        <li><a href="user/toSignUp"><i class="fa fa-home"></i> 注册</a></li>
    </ol>
</div>
<!-- //breadcrumb -->
<!-- login-page -->
<div class="login-page about">
    <img class="login-w3img" src="images/img3.jpg" alt="">

    <div class="container">
        <h3 class="w3ls-title w3ls-title1">登录</h3>
        <div class="login-agileinfo">
            <form action="${ctx}/sys/customer/dologin" method="post" modelAttribute="lo">
                <input class="agile-ltext" type="text" name="customerName" placeholder="用户名" required="">
                <input class="agile-ltext" type="password" name="passWord" placeholder="密码" required="">
                <div class="wthreelogin-text">
                    <ul>
                        <li>
                            <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>
                                <span>记住密码</span>
                            </label>
                        </li>
                        <li><a href="#">忘记密码?</a> </li>
                    </ul>
                    <div class="clearfix"> </div>
                </div>
                <input type="submit" value="登录">
            </form>
            <p>没有账号?<a href="user/toSignUp"> 马上注册!</a></p>
        </div>
    </div>
</div>
<div class="copyw3-agile">
    <div class="container">
        <p>Copyright &copy; 2017.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
    </div>
</div>
<!-- //footer -->
<!-- cart-js -->
<script src="${ctx}/js/minicart.js"></script>
<script>
    w3ls.render();

    w3ls.cart.on('w3sb_checkout', function (evt) {
        var items, len, i;

        if (this.subtotal() > 0) {
            items = this.items();

            for (i = 0, len = items.length; i < len; i++) {
            }
        }
    });
</script>
<!-- //cart-js -->
<!-- start-smooth-scrolling -->
<script src="${ctx}/js/SmoothScroll.min.js"></script>
<script type="text/javascript" src="${ctx}/js/move-top.js"></script>
<script type="text/javascript" src="${ctx}/js/easing.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function($) {
        $(".scroll").click(function(event){
            event.preventDefault();

            $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
        });
    });
</script>
<!-- //end-smooth-scrolling -->
<!-- smooth-scrolling-of-move-up -->
<script type="text/javascript">
    $(document).ready(function() {
        /*
        var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
        };
        */

        $().UItoTop({ easingType: 'easeOutQuart' });

    });
</script>
<!-- //smooth-scrolling-of-move-up -->
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="${ctx}/js/bootstrap.js"></script>
</body>
</html>