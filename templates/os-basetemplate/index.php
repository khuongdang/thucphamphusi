<?php
$app = JFactory::getApplication();
$doc = JFactory::getDocument();
$user = JFactory::getUser();
$templateparams = $app->getTemplate(true)->params;
$this->language = $doc->language;
$this->direction = $doc->direction;


// Social icons
$soc = array(
    "fa-twitter" => $this->params->get("twitter"),
    "fa-facebook" => $this->params->get("facebook"),
    "fa-flickr" => $this->params->get("flickr"),
    "fa-linkedin" => $this->params->get("linkedin"),
    "fa-youtube-play" => $this->params->get("youtube"),
    "fa-pinterest" => $this->params->get("pinterest"),
    "fa-google-plus" => $this->params->get("google"),
    "fa-dribbble" => $this->params->get("dribbble"),
    "fa-vimeo-square" => $this->params->get("vimeo"),
    "fa-instagram" => $this->params->get("instagram"),
    "fa-vk" => $this->params->get("vk"),
);

// count Modules
$left = $this->countModules('SidebarLeft');
$right = $this->countModules('SidebarRight');
$search = $this->countModules('Search');
$topmenu = $this->countModules('topMenu');
$copyrights = $this->params->get("copyrights");

// Add Stylesheets
$doc->addStyleSheet($this->baseurl . "/templates/" . $this->template . "/bootstrap/css/bootstrap.css");
$doc->addStyleSheet($this->baseurl . "/templates/" . $this->template . "/css/style.css");

// Add Script
$doc->addScript($this->baseurl . "/templates/" . $this->template . "/bootstrap/js/bootstrapOS.js");
$doc->addScript($this->baseurl . "/templates/" . $this->template . "/javascript/custom.js");


//if(version_compare(JVERSION,"3.0.0","ge")){
//  JHtml::_('bootstrap.framework');
//}  else {
// $doc->addScript($this->baseurl."/templates/".$this->template."/bootstrap/js/bootstrap-joomin.js");
//$doc->addScript($this->baseurl."/templates/".$this->template."/bootstrap/js/bootstrap.min.js");

//}

?>

<!DOCTYPE html>
<html xmlns="//www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>"
      dir="<?php echo $this->direction; ?>">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript"
            src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/javascript/jquerOS.js"></script>
    <script type="text/javascript"
            src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/javascript/fronteditingOS.js"></script>
    <script type="text/javascript">jQuerOs.noConflict();</script>
    <link href='//fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900,200italic,300italic,400italic,600italic,700italic,900italic|Dosis:200,300,400,500,600,700,800|Abel|Droid+Sans:400,700|Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic|Lora:400,700,400italic,700italic|PT+Sans:400,700,400italic,700italic|PT+Sans+Narrow:400,700|Quicksand:300,400,700|Ubuntu:300,400,500,700,300italic,400italic,500italic,700italic|Lobster|Ubuntu+Condensed|Oxygen:400,300,700|Oswald:700,400,300|Open+Sans+Condensed:300,700,300italic|Roboto+Condensed:300italic,400italic,700italic,400,700,300|Open+Sans:300italic,400italic,600italic,700italic,800italic,800,700,400,600,300|Prosto+One|Francois+One|Comfortaa:700,300,400|Raleway:300,600,900,500,400,100,800,200,700|Roboto:300,700,500italic,900,300italic,400italic,900italic,100italic,100,500,400,700italic|Roboto+Slab:300,700,100,400|Share:700,700italic,400italic,400'
          rel='stylesheet' type='text/css'
    >
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">

    <?php if ($this->params->get('favicon_file') != ""): ?>

        <link rel="shortcut icon" href="<?php echo $this->params->get('favicon_file') ?>"/>

    <?php else: ?>
        <link rel="shortcut icon" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/favicon.ico"/>
    <?php endif; ?>

    <jdoc:include type="head"/>

    <script type="text/javascript"><?php echo $this->params->get('tracking_code') ?></script>
    <!--[if IE 7]>
    <link type="text/css" rel="stylesheet"
          href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/css/style_ie7.css"/> <![endif]-->
    <!--[if IE 8]>
    <link type="text/css" rel="stylesheet"
          href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/css/style_ie8.css"/> <![endif]-->
    <!--[if IE 9]>
    <link type="text/css" rel="stylesheet"
          href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/css/style_ie9.css"/> <![endif]-->

    <?php
    require_once(JPATH_BASE . '/templates/' . $this->template .
        '/template_details_style/template_details_style.inc.php');
    ?>

    <?php
    if ($this->params->get('expand_preloader') !== "0") {
        require_once(JPATH_BASE . '/templates/' . $this->template .
            '/preloader/preloader_style.inc.php');
    }
    ?>

    <?php
    if ($this->params->get('expand_preloader') !== "0") {
        require_once(JPATH_BASE . '/templates/' . $this->template .
            '/preloader/preloader_script.inc.php');
    }
    ?>
    <script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/javascript/move-top.js"></script>
    <script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/javascript/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
            });
        });
    </script>
</head>

<body>
<!--==============================================
=            preloader html structure            =
===============================================-->

<?php
if ($this->params->get('expand_preloader') !== "0") {
    require_once(JPATH_BASE . '/templates/' . $this->template .
        '/preloader/preloader_html.inc.php');
}
?>
<?php
Util::getAllProducts();
?>
<!--====  End of preloader html structure  ====-->
<div class="header">
    <div class="logo">
        <img src="images/logo5.png" />
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
                    <?php foreach ($all_menu_items as $menu) { ?>
                        <li ><a href="index.html" class="hyper "><span><?php echo $menu->title;?></span></a></li>
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
    <div class="container">
        <div class="header-ri">
            <ul class="social-top">
                <li><a href="#" class="icon facebook"><i class="fa fa-facebook" aria-hidden="true"></i><span></span></a></li>
                <li><a href="#" class="icon twitter"><i class="fa fa-twitter" aria-hidden="true"></i><span></span></a></li>
                <li><a href="#" class="icon pinterest"><i class="fa fa-pinterest-p" aria-hidden="true"></i><span></span></a></li>
                <li><a href="#" class="icon dribbble"><i class="fa fa-dribbble" aria-hidden="true"></i><span></span></a></li>
            </ul>
        </div>




    </div>
</div>
<!---->

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
            <a href="kitchen.html"><img class="first-slide" src="images/ba.jpg" alt="First slide"></a>

        </div>
        <div class="item">
            <a href="care.html"> <img class="second-slide " src="images/ba1.jpg" alt="Second slide"></a>

        </div>
        <div class="item">
            <a href="hold.html"><img class="third-slide " src="images/ba2.jpg" alt="Third slide"></a>

        </div>
    </div>

</div><!-- /.carousel -->

<!--content-->
<div class="kic-top ">
    <div class="container ">
        <div class="kic ">
            <h3>Popular Categories</h3>

        </div>
        <div class="col-md-4 kic-top1">
            <a href="single.html">
                <img src="images/ki.jpg" class="img-responsive" alt="">
            </a>
            <h6>Dal</h6>
            <p>Nam libero tempore</p>
        </div>
        <div class="col-md-4 kic-top1">
            <a href="single.html">
                <img src="images/ki1.jpg" class="img-responsive" alt="">
            </a>
            <h6>Snacks</h6>
            <p>Nam libero tempore</p>
        </div>
        <div class="col-md-4 kic-top1">
            <a href="single.html">
                <img src="images/ki2.jpg" class="img-responsive" alt="">
            </a>
            <h6>Spice</h6>
            <p>Nam libero tempore</p>
        </div>
    </div>
</div>

<!--content-->
<div class="product">
    <div class="container">
        <div class="spec ">
            <h3>Products</h3>
            <div class="ser-t">
                <b></b>
                <span><i></i></span>
                <b class="line"></b>
            </div>
        </div>
        <div class=" con-w3l agileinf">
            <div class="col-md-3 pro-1">
                <div class="col-m">
                    <a href="#" data-toggle="modal" data-target="#myModal1" class="offer-img">
                        <img src="images/of24.png" class="img-responsive" alt="">
                    </a>
                    <div class="mid-1">
                        <div class="women">
                            <h6><a href="single.html">Wheat</a>(500 g)</h6>
                        </div>
                        <div class="mid-2">
                            <p ><label>$7.00</label><em class="item_price">$6.00</em></p>
                            <div class="block">
                                <div class="starbox small ghosting"> </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="add">
                            <button class="btn btn-danger my-cart-btn my-cart-b" data-id="24" data-name="Wheat" data-summary="summary 24" data-price="6.00" data-quantity="1" data-image="images/of24.png">Add to Cart</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 pro-1">
                <div class="col-m">
                    <a href="#" data-toggle="modal" data-target="#myModal2" class="offer-img">
                        <img src="images/of25.png" class="img-responsive" alt="">
                    </a>
                    <div class="mid-1">
                        <div class="women">
                            <h6><a href="single.html"> Peach Halves</a>(250 g)</h6>
                        </div>
                        <div class="mid-2">
                            <p ><label>$5.00</label><em class="item_price">$4.50</em></p>
                            <div class="block">
                                <div class="starbox small ghosting"> </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="add">
                            <button class="btn btn-danger my-cart-btn my-cart-b" data-id="25" data-name="Peach Halves" data-summary="summary 25" data-price="4.50" data-quantity="1" data-image="images/of25.png">Add to Cart</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 pro-1">
                <div class="col-m">
                    <a href="#" data-toggle="modal" data-target="#myModal3" class="offer-img">
                        <img src="images/of26.png" class="img-responsive" alt="">
                    </a>
                    <div class="mid-1">
                        <div class="women">
                            <h6><a href="single.html">Banana</a>(1 kg)</h6>
                        </div>
                        <div class="mid-2">
                            <p ><label>$4.00</label><em class="item_price">$3.50</em></p>
                            <div class="block">
                                <div class="starbox small ghosting"> </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="add">
                            <button class="btn btn-danger my-cart-btn my-cart-b" data-id="26" data-name="Banana" data-summary="summary 26" data-price="3.50" data-quantity="1" data-image="images/of26.png">Add to Cart</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 pro-1">
                <div class="col-m">
                    <a href="#" data-toggle="modal" data-target="#myModal4" class="offer-img">
                        <img src="images/of27.png" class="img-responsive" alt="">
                    </a>
                    <div class="mid-1">
                        <div class="women">
                            <h6><a href="single.html">Rice</a>(500 g)</h6>
                        </div>
                        <div class="mid-2">
                            <p ><label>$1.00</label><em class="item_price">$0.80</em></p>
                            <div class="block">
                                <div class="starbox small ghosting"> </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="add">
                            <button class="btn btn-danger my-cart-btn my-cart-b" data-id="27" data-name="Rice" data-summary="summary 27" data-price="0.80" data-quantity="1" data-image="images/of27.png">Add to Cart</button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-3 pro-1">
                <div class="col-m">
                    <a href="#" data-toggle="modal" data-target="#myModal5" class="offer-img">
                        <img src="images/of28.png" class="img-responsive" alt="">
                    </a>
                    <div class="mid-1">
                        <div class="women">
                            <h6><a href="single.html">Oil</a>(500 g)</h6>
                        </div>
                        <div class="mid-2">
                            <p ><label>$7.00</label><em class="item_price">$6.00</em></p>
                            <div class="block">
                                <div class="starbox small ghosting"> </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="add">
                            <button class="btn btn-danger my-cart-btn my-cart-b" data-id="28" data-name="Oil" data-summary="summary 28" data-price="6.00" data-quantity="1" data-image="images/of28.png">Add to Cart</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 pro-1">
                <div class="col-m">
                    <a href="#" data-toggle="modal" data-target="#myModal6" class="offer-img">
                        <img src="images/of29.png" class="img-responsive" alt="">
                    </a>
                    <div class="mid-1">
                        <div class="women">
                            <h6><a href="single.html">Biscuits</a>(250 g)</h6>
                        </div>
                        <div class="mid-2">
                            <p ><label>$5.00</label><em class="item_price">$4.50</em></p>
                            <div class="block">
                                <div class="starbox small ghosting"> </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="add">
                            <button class="btn btn-danger my-cart-btn my-cart-b" data-id="29" data-name="Biscuits" data-summary="summary 29" data-price="4.50" data-quantity="1" data-image="images/of29.png">Add to Cart</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 pro-1">
                <div class="col-m">
                    <a href="#" data-toggle="modal" data-target="#myModal7" class="offer-img">
                        <img src="images/of30.png" class="img-responsive" alt="">
                    </a>
                    <div class="mid-1">
                        <div class="women">
                            <h6><a href="single.html">Nuts</a>(1 kg)</h6>
                        </div>
                        <div class="mid-2">
                            <p ><label>$4.00</label><em class="item_price">$3.50</em></p>
                            <div class="block">
                                <div class="starbox small ghosting"> </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="add">
                            <button class="btn btn-danger my-cart-btn my-cart-b" data-id="30" data-name="Nuts" data-summary="summary 30" data-price="3.50" data-quantity="1" data-image="images/of30.png">Add to Cart</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 pro-1">
                <div class="col-m">
                    <a href="#" data-toggle="modal" data-target="#myModal8" class="offer-img">
                        <img src="images/of31.png" class="img-responsive" alt="">
                    </a>
                    <div class="mid-1">
                        <div class="women">
                            <h6><a href="single.html">Rice</a>(500 g)</h6>
                        </div>
                        <div class="mid-2">
                            <p ><label>$1.00</label><em class="item_price">$0.80</em></p>
                            <div class="block">
                                <div class="starbox small ghosting"> </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="add">
                            <button class="btn btn-danger my-cart-btn my-cart-b" data-id="31" data-name="Rice" data-summary="summary 31" data-price="0.80" data-quantity="1" data-image="images/of31.png">Add to Cart</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 pro-1">
                <div class="col-m">
                    <a href="#" data-toggle="modal" data-target="#myModal9" class="offer-img">
                        <img src="images/of32.png" class="img-responsive" alt="">
                    </a>
                    <div class="mid-1">
                        <div class="women">
                            <h6><a href="single.html">Noodles</a>(500 g)</h6>
                        </div>
                        <div class="mid-2">
                            <p ><label>$7.00</label><em class="item_price">$6.00</em></p>
                            <div class="block">
                                <div class="starbox small ghosting"> </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="add">
                            <button class="btn btn-danger my-cart-btn my-cart-b" data-id="32" data-name="Noodles" data-summary="summary 32" data-price="6.00" data-quantity="1" data-image="images/of32.png">Add to Cart</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 pro-1">
                <div class="col-m">
                    <a href="#" data-toggle="modal" data-target="#myModal10" class="offer-img">
                        <img src="images/of33.png" class="img-responsive" alt="">
                    </a>
                    <div class="mid-1">
                        <div class="women">
                            <h6><a href="single.html">Tea</a>(250 g)</h6>
                        </div>
                        <div class="mid-2">
                            <p ><label>$5.00</label><em class="item_price">$4.50</em></p>
                            <div class="block">
                                <div class="starbox small ghosting"> </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="add">
                            <button class="btn btn-danger my-cart-btn my-cart-b" data-id="33" data-name="Tea" data-summary="summary 33" data-price="4.50" data-quantity="1" data-image="images/of33.png">Add to Cart</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 pro-1">
                <div class="col-m">
                    <a href="#" data-toggle="modal" data-target="#myModal11" class="offer-img">
                        <img src="images/of34.png" class="img-responsive" alt="">
                    </a>
                    <div class="mid-1">
                        <div class="women">
                            <h6><a href="single.html">Seafood</a>(1 kg)</h6>
                        </div>
                        <div class="mid-2">
                            <p ><label>$4.00</label><em class="item_price">$3.50</em></p>
                            <div class="block">
                                <div class="starbox small ghosting"> </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="add">
                            <button class="btn btn-danger my-cart-btn my-cart-b" data-id="34" data-name="Seafood" data-summary="summary 34" data-price="3.50" data-quantity="1" data-image="images/of34.png">Add to Cart</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 pro-1">
                <div class="col-m">
                    <a href="#" data-toggle="modal" data-target="#myModal12" class="offer-img">
                        <img src="images/of35.png" class="img-responsive" alt="">
                    </a>
                    <div class="mid-1">
                        <div class="women">
                            <h6><a href="single.html">Oats Idli</a>(500 g)</h6>
                        </div>
                        <div class="mid-2">
                            <p ><label>$1.00</label><em class="item_price">$0.80</em></p>
                            <div class="block">
                                <div class="starbox small ghosting"> </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="add">
                            <button class="btn btn-danger my-cart-btn my-cart-b" data-id="35" data-name="Oats Idli" data-summary="summary 35" data-price="0.80" data-quantity="1" data-image="images/of35.png">Add to Cart</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--footer-->
<div class="footer">
    <div class="container">
        <div class="col-md-4 footer-grid">
            <h3>About Us</h3>
            <p>Nam libero tempore, cum soluta nobis est eligendi
                optio cumque nihil impedit quo minus id quod maxime
                placeat facere possimus.</p>
        </div>
        <div class="col-md-4 footer-grid ">
            <h3>Menu</h3>
            <ul>
                <li><a href="index.html">Home</a></li>
                <li><a href="kitchen.html">Kitchen</a></li>
                <li><a href="care.html">Personal Care</a></li>
                <li><a href="hold.html">Household</a></li>
                <li><a href="codes.html">Short Codes</a></li>
                <li><a href="contact.html">Contact</a></li>
            </ul>
        </div>
        <div class="col-md-4 footer-grid ">
            <h3>Customer Services</h3>
            <ul>
                <li><a href="shipping.html">Shipping</a></li>
                <li><a href="terms.html">Terms & Conditions</a></li>
                <li><a href="faqs.html">Faqs</a></li>
                <li><a href="contact.html">Contact</a></li>
                <li><a href="offer.html">Online Shopping</a></li>

            </ul>
        </div>

        <div class="clearfix"></div>
        <div class="footer-bottom">
            <h2 ><a href="index.html"><b>T<br>H<br>E</b>Big Store<span>The Best Supermarket</span></a></h2>
            <p class="fo-para">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris</p>
            <ul class="social-fo">
                <li><a href="#" class=" face"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                <li><a href="#" class=" twi"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                <li><a href="#" class=" pin"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>
                <li><a href="#" class=" dri"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
            </ul>
            <div class=" address">
                <div class="col-md-4 fo-grid1">
                    <p><i class="fa fa-home" aria-hidden="true"></i>12K Street , 45 Building Road Canada.</p>
                </div>
                <div class="col-md-4 fo-grid1">
                    <p><i class="fa fa-phone" aria-hidden="true"></i>+1234 758 839 , +1273 748 730</p>
                </div>
                <div class="col-md-4 fo-grid1">
                    <p><a href="mailto:info@example.com"><i class="fa fa-envelope-o" aria-hidden="true"></i>info@example1.com</a></p>
                </div>
                <div class="clearfix"></div>

            </div>
        </div>
        <div class="copy-right">
            <p> &copy; <?php echo date('Y');?> Big store. All Rights Reserved | Design by  <a href="http://w3layouts.com/"> W3layouts</a></p>
        </div>
    </div>
</div>
<!-- //footer-->

<!-- smooth scrolling -->
<script type="text/javascript">
    jQuery(document).ready(function() {
        /*
            var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
            };
        */
        jQuery().UItoTop({ easingType: 'easeOutQuart' });
    });
</script>
<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->

<!-- product -->
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content modal-info">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body modal-spa">
                <div class="col-md-5 span-2">
                    <div class="item">
                        <img src="images/of24.png" class="img-responsive" alt="">
                    </div>
                </div>
                <div class="col-md-7 span-1 ">
                    <h3>Wheat(500 g)</h3>
                    <p class="in-para"> There are many variations of passages of Lorem Ipsum.</p>
                    <div class="price_single">
                        <span class="reducedfrom "><del>$2.00</del>$1.50</span>

                        <div class="clearfix"></div>
                    </div>
                    <h4 class="quick">Quick Overview:</h4>
                    <p class="quick_desc"> Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; es</p>
                    <div class="add-to">
                        <button class="btn btn-danger my-cart-btn my-cart-btn1 " data-id="24" data-name="Wheat" data-summary="summary 24" data-price="1.50" data-quantity="1" data-image="images/of24.png">Add to Cart</button>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
</div>
<!-- product -->
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content modal-info">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body modal-spa">
                <div class="col-md-5 span-2">
                    <div class="item">
                        <img src="images/of25.png" class="img-responsive" alt="">
                    </div>
                </div>
                <div class="col-md-7 span-1 ">
                    <h3>Peach Halves(250 g)</h3>
                    <p class="in-para"> There are many variations of passages of Lorem Ipsum.</p>
                    <div class="price_single">
                        <span class="reducedfrom "><del>$10.00</del>$9.00</span>

                        <div class="clearfix"></div>
                    </div>
                    <h4 class="quick">Quick Overview:</h4>
                    <p class="quick_desc"> Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; es</p>
                    <div class="add-to">
                        <button class="btn btn-danger my-cart-btn my-cart-btn1 " data-id="25" data-name="Peach Halves" data-summary="summary 25" data-price="9.00" data-quantity="1" data-image="images/of25.png">Add to Cart</button>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
</div>
<!-- product -->
<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content modal-info">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body modal-spa">
                <div class="col-md-5 span-2">
                    <div class="item">
                        <img src="images/of26.png" class="img-responsive" alt="">
                    </div>
                </div>
                <div class="col-md-7 span-1 ">
                    <h3>Banana(1 kg)</h3>
                    <p class="in-para"> There are many variations of passages of Lorem Ipsum.</p>
                    <div class="price_single">
                        <span class="reducedfrom "><del>$3.00</del>$2.00</span>

                        <div class="clearfix"></div>
                    </div>
                    <h4 class="quick">Quick Overview:</h4>
                    <p class="quick_desc"> Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; es</p>
                    <div class="add-to">
                        <button class="btn btn-danger my-cart-btn my-cart-btn1 " data-id="26" data-name="Banana" data-summary="summary 26" data-price="2.00" data-quantity="1" data-image="images/of26.png">Add to Cart</button>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
</div>
<!-- product -->
<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content modal-info">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body modal-spa">
                <div class="col-md-5 span-2">
                    <div class="item">
                        <img src="images/of27.png" class="img-responsive" alt="">
                    </div>
                </div>
                <div class="col-md-7 span-1 ">
                    <h3>Rice(500 g)</h3>
                    <p class="in-para"> There are many variations of passages of Lorem Ipsum.</p>
                    <div class="price_single">
                        <span class="reducedfrom "><del>$4.00</del>$3.50</span>

                        <div class="clearfix"></div>
                    </div>
                    <h4 class="quick">Quick Overview:</h4>
                    <p class="quick_desc"> Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; es</p>
                    <div class="add-to">
                        <button class="btn btn-danger my-cart-btn my-cart-btn1 " data-id="27" data-name="Rice" data-summary="summary 27" data-price="3.50" data-quantity="1" data-image="images/of27.png">Add to Cart</button>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
</div>
<!-- product -->
<div class="modal fade" id="myModal5" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content modal-info">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body modal-spa">
                <div class="col-md-5 span-2">
                    <div class="item">
                        <img src="images/of28.png" class="img-responsive" alt="">
                    </div>
                </div>
                <div class="col-md-7 span-1 ">
                    <h3>Oil(500 g)</h3>
                    <p class="in-para"> There are many variations of passages of Lorem Ipsum.</p>
                    <div class="price_single">
                        <span class="reducedfrom "><del>$1.00</del>$0.70</span>

                        <div class="clearfix"></div>
                    </div>
                    <h4 class="quick">Quick Overview:</h4>
                    <p class="quick_desc"> Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; es</p>
                    <div class="add-to">
                        <button class="btn btn-danger my-cart-btn my-cart-btn1 " data-id="28" data-name="Oil(500 g)" data-summary="summary 28" data-price="0.70" data-quantity="1" data-image="images/of28.png">Add to Cart</button>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
</div>
<!-- product -->
<div class="modal fade" id="myModal6" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content modal-info">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body modal-spa">
                <div class="col-md-5 span-2">
                    <div class="item">
                        <img src="images/of29.png" class="img-responsive" alt="">
                    </div>
                </div>
                <div class="col-md-7 span-1 ">
                    <h3>Biscuits(250 g)</h3>
                    <p class="in-para"> There are many variations of passages of Lorem Ipsum.</p>
                    <div class="price_single">
                        <span class="reducedfrom "><del>$1.00</del>$0.70</span>

                        <div class="clearfix"></div>
                    </div>
                    <h4 class="quick">Quick Overview:</h4>
                    <p class="quick_desc"> Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; es</p>
                    <div class="add-to">
                        <button class="btn btn-danger my-cart-btn my-cart-btn1 " data-id="29" data-name="Biscuits" data-summary="summary 29" data-price="0.70" data-quantity="1" data-image="images/of29.png">Add to Cart</button>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
</div>
<!-- product -->
<div class="modal fade" id="myModal7" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content modal-info">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body modal-spa">
                <div class="col-md-5 span-2">
                    <div class="item">
                        <img src="images/of30.png" class="img-responsive" alt="">
                    </div>
                </div>
                <div class="col-md-7 span-1 ">
                    <h3>Nuts(1 kg)</h3>
                    <p class="in-para"> There are many variations of passages of Lorem Ipsum.</p>
                    <div class="price_single">
                        <span class="reducedfrom "><del>$2.00</del>$1.00</span>

                        <div class="clearfix"></div>
                    </div>
                    <h4 class="quick">Quick Overview:</h4>
                    <p class="quick_desc"> Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; es</p>
                    <div class="add-to">
                        <button class="btn btn-danger my-cart-btn my-cart-btn1 " data-id="30" data-name="Nuts" data-summary="summary 30" data-price="1.00" data-quantity="1" data-image="images/of30.png">Add to Cart</button>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
</div>
<!-- product -->
<div class="modal fade" id="myModal8" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content modal-info">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body modal-spa">
                <div class="col-md-5 span-2">
                    <div class="item">
                        <img src="images/of31.png" class="img-responsive" alt="">
                    </div>
                </div>
                <div class="col-md-7 span-1 ">
                    <h3>Rice(500 g)</h3>
                    <p class="in-para"> There are many variations of passages of Lorem Ipsum.</p>
                    <div class="price_single">
                        <span class="reducedfrom "><del>$4.00</del>$3.50</span>

                        <div class="clearfix"></div>
                    </div>
                    <h4 class="quick">Quick Overview:</h4>
                    <p class="quick_desc"> Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; es</p>
                    <div class="add-to">
                        <button class="btn btn-danger my-cart-btn my-cart-btn1 " data-id="31" data-name="Rice" data-summary="summary 31" data-price="3.50" data-quantity="1" data-image="images/of31.png">Add to Cart</button>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
</div>
<!-- product -->
<div class="modal fade" id="myModal9" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content modal-info">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body modal-spa">
                <div class="col-md-5 span-2">
                    <div class="item">
                        <img src="images/of32.png" class="img-responsive" alt="">
                    </div>
                </div>
                <div class="col-md-7 span-1 ">
                    <h3>Noodles(500 g)</h3>
                    <p class="in-para"> There are many variations of passages of Lorem Ipsum.</p>
                    <div class="price_single">
                        <span class="reducedfrom "><del>$2.00</del>$1.50</span>

                        <div class="clearfix"></div>
                    </div>
                    <h4 class="quick">Quick Overview:</h4>
                    <p class="quick_desc"> Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; es</p>
                    <div class="add-to">
                        <button class="btn btn-danger my-cart-btn my-cart-btn1 " data-id="32" data-name="Noodles" data-summary="summary 32" data-price="1.50" data-quantity="1" data-image="images/of32.png">Add to Cart</button>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
</div>
<!-- product -->
<div class="modal fade" id="myModal10" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content modal-info">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body modal-spa">
                <div class="col-md-5 span-2">
                    <div class="item">
                        <img src="images/of33.png" class="img-responsive" alt="">
                    </div>
                </div>
                <div class="col-md-7 span-1 ">
                    <h3>Tea(250 g)</h3>

                    <p class="in-para"> There are many variations of passages of Lorem Ipsum.</p>
                    <div class="price_single">
                        <span class="reducedfrom "><del>$1.00</del>$0.70</span>

                        <div class="clearfix"></div>
                    </div>
                    <h4 class="quick">Quick Overview:</h4>
                    <p class="quick_desc"> Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; es</p>
                    <div class="add-to">
                        <button class="btn btn-danger my-cart-btn my-cart-btn1 " data-id="33" data-name="Seafood" data-summary="summary 33" data-price="0.70" data-quantity="1" data-image="images/of33.png">Add to Cart</button>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
</div>
<!-- product -->
<div class="modal fade" id="myModal11" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content modal-info">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body modal-spa">
                <div class="col-md-5 span-2">
                    <div class="item">
                        <img src="images/of34.png" class="img-responsive" alt="">
                    </div>
                </div>
                <div class="col-md-7 span-1 ">
                    <h3>Seafood(1 kg)</h3>

                    <p class="in-para"> There are many variations of passages of Lorem Ipsum.</p>
                    <div class="price_single">
                        <span class="reducedfrom "><del>$2.00</del>$1.00</span>

                        <div class="clearfix"></div>
                    </div>
                    <h4 class="quick">Quick Overview:</h4>
                    <p class="quick_desc"> Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; es</p>
                    <div class="add-to">
                        <button class="btn btn-danger my-cart-btn my-cart-btn1 " data-id="34" data-name="Oats Idli" data-summary="summary 34" data-price="1.00" data-quantity="1" data-image="images/of34.png">Add to Cart</button>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
</div>
<!-- product -->
<div class="modal fade" id="myModal12" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content modal-info">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body modal-spa">
                <div class="col-md-5 span-2">
                    <div class="item">
                        <img src="images/of35.png" class="img-responsive" alt="">
                    </div>
                </div>
                <div class="col-md-7 span-1 ">
                    <h3>Oats Idli(500 g)</h3>
                    <p class="in-para"> There are many variations of passages of Lorem Ipsum.</p>
                    <div class="price_single">
                        <span class="reducedfrom "><del>$4.00</del>$3.50</span>

                        <div class="clearfix"></div>
                    </div>
                    <h4 class="quick">Quick Overview:</h4>
                    <p class="quick_desc"> Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; es</p>
                    <div class="add-to">
                        <button class="btn btn-danger my-cart-btn my-cart-btn1 " data-id="35" data-name="product 35" data-summary="summary 35" data-price="3.50" data-quantity="1" data-image="images/of35.png">Add to Cart</button>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>