<%@page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
    <%@include file="/common/head.jsp"%>
    <title>LuxuryHotel a Hotel Template</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700,900|Rubik:300,400,700" rel="stylesheet">

    <link rel="stylesheet" href="${ctx}/css/bootstrap.css">
    <link rel="stylesheet" href="${ctx}/css/animate.css">
    <link rel="stylesheet" href="${ctx}/css/owl.carousel.min.css">

    <link rel="stylesheet" href="${ctx}/fonts/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="${ctx}/fonts/fontawesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="${ctx}/css/magnific-popup.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/css/bootstrap-datepicker.min.css">

    <!-- Theme Style -->
    <link rel="stylesheet" href="${ctx}/css/style.css">
</head>
<body>

<jsp:include page="roomHead.jsp"></jsp:include>

<section class="site-hero site-hero-innerpage overlay" data-stellar-background-ratio="0.5" style="background-image: url(images/big_image_1.jpg);">
    <div class="container">
        <div class="row align-items-center site-hero-inner justify-content-center">
            <div class="col-md-12 text-center">

                <div class="mb-5 element-animate">
                    <h1>预订</h1>
                    <p>Discover our world's #1 Luxury Room For VIP.</p>
                </div>

            </div>
        </div>
    </div>
</section>
<!-- END section -->

<section class="site-section">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <form action="#" method="post">
                    <div class="row">
                        <div class="col-sm-6 form-group">

                            <label for="">入住时间</label>
                            <div style="position: relative;">
                                <span class="fa fa-calendar icon" style="position: absolute; right: 10px; top: 10px;"></span>
                                <input type='text' class="form-control" id='arrival_date' />
                            </div>
                        </div>

                        <div class="col-sm-6 form-group">

                            <label for="">离店时间</label>
                            <div style="position: relative;">
                                <span class="fa fa-calendar icon" style="position: absolute; right: 10px; top: 10px;"></span>
                                <input type='text' class="form-control" id='departure_date' />
                            </div>
                        </div>

                    </div>


                    <div class="row">
                        <div class="col-md-6 form-group">
                            <label for="room">房数</label>
                            <select name="" id="room" class="form-control">
                                <option value="">1 间</option>
                                <option value="">2 间</option>
                                <option value="">3 间</option>
                                <option value="">4 间</option>
                                <option value="">5 间</option>
                            </select>
                        </div>

                        <div class="col-md-6 form-group">
                            <label for="room">客人</label>
                            <select name="" id="room" class="form-control">
                                <option value="">1 人</option>
                                <option value="">2 人</option>
                                <option value="">3 人</option>
                                <option value="">4 人</option>
                                <option value="">5+ 人</option>
                            </select>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 form-group">
                            <label for="email">邮件</label>
                            <input type="email" id="email" class="form-control ">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 form-group">
                            <label for="message">留言</label>
                            <textarea name="message" id="message" class="form-control " cols="30" rows="8"></textarea>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <input type="submit" value="提交订单" class="btn btn-primary">
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-md-1"></div>
            <div class="col-md-5">
                <h3 class="mb-5">${roomList.roomtype}</h3>
                <div class="media d-block room mb-0">
                    <figure>
                        <img src="${roomList.imagename}" alt="Generic placeholder image" class="img-fluid">
                        <div class="overlap-text">
                  <span>
                    ${roomList.roomname}
                    <span class="ion-ios-star"></span>
                    <span class="ion-ios-star"></span>
                    <span class="ion-ios-star"></span>
                  </span>
                        </div>
                    </figure>
                    <div class="media-body">
                        <h3 class="mt-0"><a href="#">${roomname.roomname}</a></h3>
                        <ul class="room-specs">
                            <li><span class="ion-ios-people-outline"></span> ${roomList.count} 人</li>
                            <li><span class="ion-ios-crop"></span> ${roomList.area} ft <sup>2</sup></li>
                        </ul>
                        <p>${roomList.remark} </p>
                        <p><a class="btn btn-primary btn-sm">现在预订 ${roomList.price}</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section><section class="site-section">
    <div class="container">
        <div class="row">
                <form action="#" method="post">
                    <div class="padder">
                        <div class="streamline b-l b-info m-l-lg m-b padder-v">
                            <div>
                                <h3>评论</h3><br>
                                <c:forEach items="${pCommentsVoList}" var="com">
                                <div class="m-l-lg">

                                    <div class="m-b-xs">
                                        <a href class="h4">${com.customerName}</a>
                                    </div>
                                    <div class="m-b">
                                        <div>${com.messge} </div><br>
                                    </div>
                                </div></c:forEach>
                            </div><br>



                        </div>
                    </div>
                </form>

        </div>
    </div>
</section>




<footer class="site-footer">
    <div class="container">
        <div class="row mb-5">
            <div class="col-md-4">
                <h3>Phone Support</h3>
                <p>24/7 Call us now.</p>
                <p class="lead"><a href="tel://">+ 1 332 3093 323</a></p>
            </div>
            <div class="col-md-4">
                <h3>Connect With Us</h3>
                <p>We are socialized. Follow us</p>
                <p>
                    <a href="#" class="pl-0 p-3"><span class="fa fa-facebook"></span></a>
                    <a href="#" class="p-3"><span class="fa fa-twitter"></span></a>
                    <a href="#" class="p-3"><span class="fa fa-instagram"></span></a>
                    <a href="#" class="p-3"><span class="fa fa-vimeo"></span></a>
                    <a href="#" class="p-3"><span class="fa fa-youtube-play"></span></a>
                </p>
            </div>
            <div class="col-md-4">
                <h3>Connect With Us</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maxime, odio.</p>
                <form action="#" class="subscribe">
                    <div class="form-group">
                        <button type="submit"><span class="ion-ios-arrow-thin-right"></span></button>
                        <input type="email" class="form-control" placeholder="Enter email">
                    </div>

                </form>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-md-7 text-center">
                &copy;
                Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | by Colorlib - More Templates <a href="http://www.cssmoban.com/" target="_blank" title="æ¨¡æ¿ä¹å®¶">æ¨¡æ¿ä¹å®¶</a> - Collect from <a href="http://www.cssmoban.com/" title="ç½é¡µæ¨¡æ¿" target="_blank">ç½é¡µæ¨¡æ¿</a>

            </div>
        </div>
    </div>
</footer>
<!-- END footer -->

<!-- loader -->
<div id="loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#f4b214"/></svg></div>

<script src="${ctx}/js/jquery-3.2.1.min.js"></script>
<script src="${ctx}/js/jquery-migrate-3.0.0.js"></script>
<script src="${ctx}/js/popper.min.js"></script>
<script src="${ctx}/js/bootstrap.min.js"></script>
<script src="${ctx}/js/owl.carousel.min.js"></script>
<script src="${ctx}/js/jquery.waypoints.min.js"></script>
<script src="${ctx}/js/jquery.stellar.min.js"></script>

<script src="${ctx}/js/jquery.magnific-popup.min.js"></script>
<script src="${ctx}/js/magnific-popup-options.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/js/bootstrap-datepicker.min.js"></script>

<script>

    $('#arrival_date, #departure_date').datepicker({});

</script>



<script src="${ctx}/js/main.js"></script>
</body>
</html>