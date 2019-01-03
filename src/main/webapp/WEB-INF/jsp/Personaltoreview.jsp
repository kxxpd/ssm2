
<%@page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@include file="/common/head.jsp"%>

    <title>Home</title>
    <link href="${ctx}/ucss/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" /><!-- fontawesome -->
    <link href="${ctx}/ucss/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" /><!-- Bootstrap stylesheet -->
    <link href="${ctx}/ucss/style.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="${ctx}/ucss/flexslider.css" type="text/css" media="screen" property="" />
    <!-- stylesheet -->
    <!-- meta tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //meta tags -->
    <!--fonts-->
    <link href="http://fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i&subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <!--//fonts-->
    <script type="text/javascript" src="${ctx}/ujs/jquery-2.1.4.min.js"></script>
    <script src="${ctx}/ujs/main.js"></script>
    <script src="${ctx}/fycss/plugin/dataTables.css"></script>
    <!-- Required-js -->
    <!-- main slider-banner -->
    <script src="${ctx}/ujs/skdslider.min.js"></script>
    <link href="${ctx}/ucss/skdslider.css" rel="stylesheet">
    <script type="text/javascript">
        jQuery(document).ready(function(){
            jQuery('#demo1').skdslider({'delay':5000, 'animationSpeed': 2000,'showNextPrev':true,'showPlayButton':true,'autoSlide':true,'animationType':'fading'});

            jQuery('#responsive').change(function(){
                $('#responsive_wrapper').width(jQuery(this).val());
            });

        });
    </script>
    <!-- //main slider-banner -->
    <!-- start-smoth-scrolling -->
    <script src="${ctx}/fyjs/jquery/jquery.dataTables.min.js"></script>

    <script type="text/javascript" src="${ctx}/ujs/move-top.js"></script>
    <script type="text/javascript" src="${ctx}/ujs/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
            });
        });
    </script>
    <!-- start-smoth-scrolling -->

    <!-- scriptfor smooth drop down-nav -->
    <script>
        $(document).ready(function(){
            $(".dropdown").hover(
                function() {
                    $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
                    $(this).toggleClass('open');
                },
                function() {
                    $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
                    $(this).toggleClass('open');
                }
            );
        });
    </script>
    <!-- //script for smooth drop down-nav -->
</head>
<body>
<!-- header -->
<header>
    <div class="w3layouts-top-strip">
        <div class="container">
            <div class="logo">
                <h1><a href="index.html">个人中心</a></h1>
                <p>lets make a Life style</p>
            </div>
        </div>
    </div>
    <!-- navigation -->
    <nav class="navbar navbar-default">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a class="active" href="index.html">全部订单</a></li>
                    <li><a href="sys/person/roomnotgo?name=${name}">未出行</a></li>
                    <li><a href="sys/person/toreview?name=${name}">待点评</a></li>
                    <li><a href="sys/person/mykf?name=${name}">我的客服</a></li>
                </ul>
            </div><!-- /.navbar-collapse -->
            <div class="w3_agile_login">
                <div class="cd-main-header">
                    返回
                </div>
            </div>
            <div class="clearfix"> </div>

        </div><!-- /.container-fluid -->
    </nav>

    <!-- //navigation -->
</header>
<!-- //header -->
<!-- top-header and slider -->

<div class="container">
    <div class="banner-btm-agile">
        <!-- //btm-wthree-left -->

        <div class="col-md-9 btm-wthree-left">

            <table class="data display datatableVolume" style="width: 600px">
                <thead>
                <tr>
                    <th width="100"></th>

                </tr>
                </thead>
                <tbody><c:forEach items="${pRoomOrderInfosview}" var="ro">
                    <tr>
                        <td>
                            <div class="wthree-top">
                                <div class="w3agile-bottom">
                                    <div class="col-md-3 w3agile-left">
                                        <h5>
                                            <c:if test="${ro.ztai==1}">未入住</c:if>
                                            <c:if test="${ro.ztai==2}">已入住</c:if>
                                            <c:if test="${ro.ztai==0}">作废订单</c:if>
                                        </h5>
                                    </div>
                                    <div class="col-md-9 w3agile-right">
                                        <h3><a href="">${ro.submitTime} </a></h3><br>

                                        名字：${ro.name}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        电话：${ro.phone}<br>
                                        价格：${ro.price}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        房间号：${ro.roomnum}<br>
                                        <a class="agileits w3layouts" href="singlepage.html">去点评<span class="glyphicon agileits w3layouts glyphicon-arrow-right" aria-hidden="true"></span></a>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>

                        </td>

                    </tr></c:forEach>
                </tbody>
            </table>






            <!-- wthree-top-1 -->
            <div class="wthree-top-1">
                <div class="w3agile-top">
                    <section class="slider">
                        <div class="flexslider">

                        </div>
                    </section>
                    <!-- flexSlider -->
                    <script defer src="${ctx}/ujs/jquery.flexslider.js"></script>
                    <script type="text/javascript">
                        $(window).load(function(){
                            $('.flexslider').flexslider({
                                animation: "slide",
                                start: function(slider){
                                    $('body').removeClass('loading');
                                }
                            });
                        });
                    </script>
                    <!-- //flexSlider -->


                </div>

            </div>

            <div class="tlinks">Collect from <a href="http://www.cssmoban.com/" >企业网站模板</a></div>

        </div>
        <!-- //btm-wthree-left -->
        <!-- btm-wthree-right -->
        <div class="col-md-3 w3agile_blog_left">

            <div class="w3ls_popular_posts">
                <h3>Popular Posts</h3>
                <div class="agileits_popular_posts_grid">
                    <div class="w3agile_special_deals_grid_left_grid">
                        <a href="singlepage.html"><img src="uimages/p1.jpg" class="img-responsive" alt="" /></a>
                    </div>
                    <h4><a href="singlepage.html">Tellus Faucibus Eleifend Sit Amet</a></h4>
                    <h5><i class="fa fa-calendar" aria-hidden="true"></i>FEB 15,2017</h5>
                </div>
                <div class="agileits_popular_posts_grid">
                    <div class="w3agile_special_deals_grid_left_grid">
                        <a href="singlepage.html"><img src="uimages/p2.jpg" class="img-responsive" alt="" /></a>
                    </div>
                    <h4><a href="singlepage.html">Mauris Ut Odio Sed Nisi Convallis</a></h4>
                    <h5><i class="fa fa-calendar" aria-hidden="true"></i>FEB 15,2017</h5>
                </div>
                <div class="agileits_popular_posts_grid">
                    <div class="w3agile_special_deals_grid_left_grid">
                        <a href="singlepage.html"><img src="uimages/p3.jpg" class="img-responsive" alt="" /></a>
                    </div>
                    <h4><a href="singlepage.html">Curabitur A Sapien Et Tellus Faucibus</a></h4>
                    <h5><i class="fa fa-calendar" aria-hidden="true"></i>FEB 15,2017</h5>
                </div>
            </div>


            <div class="w3ls_recent_posts">
                <h3>Recent Posts</h3>
                <div class="agileits_recent_posts_grid">
                    <div class="agileits_recent_posts_gridl">
                        <div class="w3agile_special_deals_grid_left_grid">
                            <a href="singlepage.html"><img src="uimages/r1.jpg" class="img-responsive" alt="" /></a>
                        </div>
                    </div>
                    <div class="agileits_recent_posts_gridr">
                        <h4><a href="singlepage.html">velit esse quam nihil</a></h4>
                        <h5><i class="fa fa-calendar" aria-hidden="true"></i>FEB 15,2017</h5>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="agileits_recent_posts_grid">
                    <div class="agileits_recent_posts_gridl">
                        <div class="w3agile_special_deals_grid_left_grid">
                            <a href="singlepage.html"><img src="uimages/r2.jpg" class="img-responsive" alt="" /></a>
                        </div>
                    </div>
                    <div class="agileits_recent_posts_gridr">
                        <h4><a href="singlepage.html">Class aptent taciti </a></h4>
                        <h5><i class="fa fa-calendar" aria-hidden="true"></i>FEB 15,2017</h5>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="agileits_recent_posts_grid">
                    <div class="agileits_recent_posts_gridl">
                        <div class="w3agile_special_deals_grid_left_grid">
                            <a href="singlepage.html"><img src="uimages/r3.jpg" class="img-responsive" alt="" /></a>
                        </div>
                    </div>
                    <div class="agileits_recent_posts_gridr">
                        <h4><a href="singlepage.html">Maecenas eget erat </a></h4>
                        <h5><i class="fa fa-calendar" aria-hidden="true"></i>FEB 15,2017</h5>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>

        </div>
        <!-- //btm-wthree-right -->
        <div class="clearfix"></div>
    </div>
</div>

<!-- //copyright -->
<!-- here stars scrolling icon -->
<script src="${ctx}/fyjs/jquery/jquery-1.5.2.min.js"></script>
<script src="${ctx}/fyjs/jquery/jquery-ui-1.8.12.custom.min.js"></script>
<script src="${ctx}/fyjs/misc/excanvas.min.js"></script>
<script src="${ctx}/fyjs/jquery/facebox.js"></script>
<script src="${ctx}/fyjs/jquery/jquery.visualize.js"></script>
<script src="${ctx}/fyjs/jquery/jquery.dataTables.min.js"></script>
<script src="${ctx}/fyjs/jquery/jquery.tablesorter.min.js"></script>
<script src="${ctx}/fyjs/jquery/jquery.uniform.min.js"></script>
<script src="${ctx}/fyjs/jquery/jquery.placeholder.min.js"></script>

<script src="${ctx}/fyjs/widgets.js"></script>
<script src="${ctx}/fyjs/dashboard.js"></script>
<script type="text/javascript">

    $(document).ready ( function ()
    {
        Dashboard.init ();


        $('.datatableVolume').dataTable({
            bSort : false,                //不允许排序
            aLengthMenu : [[10, 2, 100, -1], [10, 2, 100, '显示所有']],  //分页器可选值
            iDisplayLength : 20           //默认情况下，一页显示多少条
        });

    });

    //设置用户所属表册


    //设置排序
    function setOrder(){
        window.showModalDialog('rd_volume_1_setOrder.html',null,'dialogWidth:560px;dialogHeight:200px;');
    }


</script>
<!-- //here ends scrolling icon -->

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${ctx}/ujs/bootstrap.js"></script>
</body>
</html>
