<!DOCTYPE html>
<html>
<head>
    <title>Nhà phân phối thực phẩm Phú Sĩ</title>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta property="og:url"                content="http://nhaphanphoiphusi.com"/>
    <meta property="og:type"               content="article" />
    <meta property="og:title"              content="Nhà phân phối Phú Sĩ - Chuyên cung cấp sĩ lẻ các mặt hàng thực phẩm Hàn Quốc " />
    <meta property="og:description"        content="Hãy đến ngay với Phú Sĩ Store. Chúng tôi luôn đáp ứng nhu cầu của bạn" />
    <meta property="og:image"              content="http://nhaphanphoiphusi.com/images/phocagallery/banh-hq/thumbs/phoca_thumb_l_11.%20banh%20snack%20tom%20cay%20ns%20b8%2090g%20-%208801043036078.jpg" />
    <meta name="description" content="Nhà phân phối, cung cấp thực phẩm Hàn Quốc, Thái Lan. Chuyên cung cấp sĩ lẻ các mặt hàng như Mì, Bánh, Nước tăng lưc, Nước gạo, Nước trái cây">
    <meta name="keywords" content="Nhà phân phối, nhà phân phối Phú Sĩ, cửa hàng Phú Sĩ, cung cấp thực phẩm Hàn Quốc, thực phẩm Hàn Quốc, thực phẩm, nước uống, nước tăng lực, mì, rong biển, các lại sản phẩm Hàn Quốc, cung cấp sĩ lẻ, thực phẩm Thái Lan, cung cấp nước tăng lực Thái Lan" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
        function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //for-mobile-apps -->
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
    <!-- Custom Theme files -->
    <link href="css/style.css" rel='stylesheet' type='text/css' />
    <link rel="icon" type="image/x-icon" href="images/ico.png">
    <!-- js -->
    <script src="js/jquery-1.11.1.min.js"></script>
    <!-- //js -->
    <!-- start-smoth-scrolling -->
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
            });
            $('[data-ride="carousel"]').on("touchstart", function(event){
                var xClick = event.originalEvent.touches[0].pageX;
                $(this).one("touchmove", function(event){
                    var xMove = event.originalEvent.touches[0].pageX;
                    if( Math.floor(xClick - xMove) > 5 ){
                        $(this).carousel('next');
                    }
                    else if( Math.floor(xClick - xMove) < -5 ){
                        $(this).carousel('prev');
                    }
                });
                $('[data-ride="carousel"]').on("touchend", function(){
                    $(this).off("touchmove");
                });
            });
        });
    </script>
    <!-- start-smoth-scrolling -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <link href='//fonts.googleapis.com/css?family=Noto+Sans:400,700' rel='stylesheet' type='text/css'>
    <!-- Google Tag Manager -->
    <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
                new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
            j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
            'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
        })(window,document,'script','dataLayer','GTM-M3XNBCZ');</script>
    <!-- End Google Tag Manager -->
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-128365232-1"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());

        gtag('config', 'UA-128365232-1');
    </script>
</head>
<body>
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-M3XNBCZ"
                  height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
<div class="header">
    <div class="container">
        <div class="logo">
            <a href="<?php echo JUri::base();?>">
                <img src="images/logo5.png"/>
            </a>
        </div>
        <div class="nav-top">
            <nav class="navbar navbar-default">
                <div class="navbar-header nav_2">
                    <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <?php
                    $all_menu_items = Util::getAllMenuItems();
                ?>
                <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
                    <ul class="nav navbar-nav ">
                        <?php foreach ($all_menu_items as $menu) {
                            $class = '';
                            $menu_query = $menu->query;
                            if (!empty($menu_query['id_category'])) {
                                if ($menu_query['id_category'] == JRequest::getVar('id_category')) {
                                    $class = 'class="active"';
                                }
                            }
                            if ($menu_query['view'] == 'featured' && empty(JRequest::getVar('id_category'))) {
                                $class = 'class="active"';
                            }
                            $link = JRoute::_($menu->link);
                            ?>
                            <li <?php echo $class;?>><a title="<?php echo $menu->title; ?>" href="<?php echo $link;?>" class="hyper "><span><?php echo $menu->title; ?></span></a></li>
                        <?php } ?>
                        <!--<li  class="dropdown active">
                            <a href="#" class="dropdown-toggle  hyper" data-toggle="dropdown" ><span>Kitchen<b class="caret"></b></span></a>
                            <ul class="dropdown-menu multi">
                                <div class="row">
                                    <div class="col-sm-3">
                                        <ul class="multi-column-dropdown">
                                            <li><a href="kitchen.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Water & Beverages</a></li>
                                            <li><a href="kitchen.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Fruits & Vegetables</a></li>
                                            <li><a href="kitchen.html"> <i class="fa fa-angle-right" aria-hidden="true"></i>Staples</a></li>
                                            <li><a href="kitchen.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Branded Food</a></li>

                                        </ul>

                                    </div>
                                    <div class="col-sm-3">

                                        <ul class="multi-column-dropdown">
                                            <li><a href="kitchen.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Breakfast &amp; Cereal</a></li>
                                            <li><a href="kitchen.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Snacks</a></li>
                                            <li><a href="kitchen.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Spices</a></li>
                                            <li><a href="kitchen.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Biscuit &amp; Cookie</a></li>
                                            <li><a href="kitchen.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Sweets</a></li>

                                        </ul>

                                    </div>
                                    <div class="col-sm-3">

                                        <ul class="multi-column-dropdown">
                                            <li><a href="kitchen.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Pickle & Condiment</a></li>
                                            <li><a href="kitchen.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Instant Food</a></li>
                                            <li><a href="kitchen.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Dry Fruit</a></li>
                                            <li><a href="kitchen.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Tea &amp; Coffee</a></li>

                                        </ul>
                                    </div>
                                    <div class="col-sm-3 w3l">
                                        <a href="kitchen.html"><img src="images/me.png" class="img-responsive" alt=""></a>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle hyper" data-toggle="dropdown" ><span> Personal Care <b class="caret"></b></span></a>
                            <ul class="dropdown-menu multi multi1">
                                <div class="row">
                                    <div class="col-sm-3">
                                        <ul class="multi-column-dropdown">
                                            <li><a href="care.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Ayurvedic </a></li>
                                            <li><a href="care.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Baby Care</a></li>
                                            <li><a href="care.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Cosmetics</a></li>
                                            <li><a href="care.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Deo & Purfumes</a></li>

                                        </ul>

                                    </div>
                                    <div class="col-sm-3">

                                        <ul class="multi-column-dropdown">
                                            <li><a href="care.html"> <i class="fa fa-angle-right" aria-hidden="true"></i>Hair Care </a></li>
                                            <li><a href="care.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Oral Care</a></li>
                                            <li><a href="care.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Personal Hygiene</a></li>
                                            <li><a href="care.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Skin care</a></li>

                                        </ul>

                                    </div>
                                    <div class="col-sm-3">

                                        <ul class="multi-column-dropdown">
                                            <li><a href="care.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Fashion Accessories </a></li>
                                            <li><a href="care.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Grooming Tools</a></li>
                                            <li><a href="care.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Shaving Need</a></li>
                                            <li><a href="care.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Sanitary Needs</a></li>

                                        </ul>
                                    </div>
                                    <div class="col-sm-3 w3l">
                                        <a href="care.html"><img src="images/me1.png" class="img-responsive" alt=""></a>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle hyper" data-toggle="dropdown" ><span>Household<b class="caret"></b></span></a>
                            <ul class="dropdown-menu multi multi2">
                                <div class="row">
                                    <div class="col-sm-3">
                                        <ul class="multi-column-dropdown">
                                            <li><a href="hold.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Cleaning Accessories</a></li>
                                            <li><a href="hold.html"><i class="fa fa-angle-right" aria-hidden="true"></i>CookWear</a></li>
                                            <li><a href="hold.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Detergents</a></li>
                                            <li><a href="hold.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Gardening Needs</a></li>

                                        </ul>

                                    </div>
                                    <div class="col-sm-3">

                                        <ul class="multi-column-dropdown">
                                            <li><a href="hold.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Kitchen & Dining</a></li>
                                            <li><a href="hold.html"><i class="fa fa-angle-right" aria-hidden="true"></i>KitchenWear</a></li>
                                            <li><a href="hold.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Pet Care</a></li>
                                            <li><a href="hold.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Plastic Wear</a></li>

                                        </ul>

                                    </div>
                                    <div class="col-sm-3">

                                        <ul class="multi-column-dropdown">
                                            <li><a href="hold.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Pooja Needs</a></li>
                                            <li><a href="hold.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Serveware</a></li>
                                            <li><a href="hold.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Safety Accessories</a></li>
                                            <li><a href="hold.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Festive Decoratives </a></li>

                                        </ul>
                                    </div>
                                    <div class="col-sm-3 w3l">
                                        <a href="hold.html"><img src="images/me2.png" class="img-responsive" alt=""></a>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </ul>
                        </li>
                        <li><a href="codes.html" class="hyper"> <span>Codes</span></a></li>
                        <li><a href="contact.html" class="hyper"><span>Contact Us</span></a></li>-->
                    </ul>
                </div>
            </nav>
            <div class="clearfix"></div>
        </div>

    </div>
</div>
<!---->
</div>

<!-- Carousel
  ================================================== -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <a href="kitchen.html"> <img class="first-slide" src="images/ba.jpg" alt="First slide"></a>

        </div>
        <div class="item">
            <a href="care.html"> <img class="second-slide " src="images/ba1.jpg" alt="Second slide"></a>

        </div>
        <div class="item">
            <a href="hold.html"><img class="third-slide " src="images/ba2.jpg" alt="Third slide"></a>

        </div>
    </div>

</div><!-- /.carousel -->
<jdoc:include type="message" />
<jdoc:include type="component" />
<!--footer-->
<div class="footer">
    <div class="container">
        <div class="footer-bottom">
            <h2><a href="index.html"><img src="images/logo6.png"/></a></h2>
            <p class="fo-para">Nhà Phân Phối Phú Sĩ tự hào là một trong những nhà phân phối thực phẩm Hàn Quốc hàng đầu
                tại Việt Nam.</p>
            <ul class="social-fo">
                <li><a target="_blank" href="https://www.messenger.com/t/100003691540723" class=" face"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
            </ul>
            <div class=" address">
                <div class="col-md-4 fo-grid1">
                    <p><i class="fa fa-home" aria-hidden="true"></i>148 Thống Nhất, P. Tân Thành, Q. Tân Phú, HCM</p>
                </div>
                <div class="col-md-4 fo-grid1">
                    <p><i class="fa fa-phone" aria-hidden="true"></i>+84 903 825 315</p>
                </div>
                <div class="col-md-4 fo-grid1">
                    <p><a href="mailto:phusi68@yahoo.com.vn"><i class="fa fa-envelope-o" aria-hidden="true"></i>phusi68@yahoo.com.vn
                        </a>
                    </p>
                </div>
                <div class="clearfix"></div>

            </div>
        </div>
        <div class="copy-right">
            <p> &copy; <?php echo date('Y'); ?> nhaphanphoiphusi.com. All Rights Reserved | Design by <a
                        href="http://allbest4u.website/">All Best For U</a></p>
        </div>
    </div>
</div>
<!-- //footer-->

<!-- smooth scrolling -->
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
<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->
<!-- for bootstrap working -->
<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
</body>
</html>