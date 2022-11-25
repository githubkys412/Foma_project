<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge"><!-- favicon -->
        <meta name="description" content="Magz is a HTML5 & CSS3 magazine template is based on Bootstrap 3.">
        <meta name="author" content="Kodinger">
        <meta name="keyword" content="magz, html5, css3, template, magazine template">
        <!-- Shareable -->
        <meta property="og:title" content="HTML5 & CSS3 magazine template is based on Bootstrap 3" />
        <meta property="og:type" content="article" />
        <meta property="og:url" content="http://github.com/nauvalazhar/Magz" />
        <meta property="og:image" content="https://raw.githubusercontent.com/nauvalazhar/Magz/master/images/preview.png" />
        <title>FOMA 회원정보수정</title>
        <!-- Bootstrap -->
        <link rel="stylesheet" href="scripts/bootstrap/bootstrap.min.css">
        <!-- IonIcons -->
        <link rel="stylesheet" href="scripts/ionicons/css/ionicons.min.css">
        <!-- Toast -->
        <link rel="stylesheet" href="scripts/toast/jquery.toast.min.css">
        <!-- OwlCarousel -->
        <link rel="stylesheet" href="scripts/owlcarousel/dist/assets/owl.carousel.min.css">
        <link rel="stylesheet" href="scripts/owlcarousel/dist/assets/owl.theme.default.min.css">
        <!-- Magnific Popup -->
        <link rel="stylesheet" href="scripts/magnific-popup/dist/magnific-popup.css">
        <link rel="stylesheet" href="scripts/sweetalert/dist/sweetalert.css">
        <!-- Custom style -->
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/skins/all.css">
        <link rel="stylesheet" href="css/demo.css">
        <link rel="shortcut icon" href="assets/images/favicon.png" type="image/png"><!-- animate scss -->
        <link rel="stylesheet" href="assets/css/animate.css"><!-- bootstarp css -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css"><!-- icofont -->
        <link rel="stylesheet" href="assets/css/icofont.min.css"><!-- lightcase css -->
        <link rel="stylesheet" href="assets/css/lightcase.css"><!-- swiper css -->
        <link rel="stylesheet" href="assets/css/swiper.min.css"><!-- custom scss -->
        <link rel="stylesheet" href="assets/css/style.css">
        <title>마이 페이지</title>
    </head>


<body>
    <!-- preloader -->
    <div class="preloader">
        <div class="load loade">
            <hr />
            <hr />
            <hr />
            <hr />
        </div>
    </div><!-- preloader -->
    <!-- Mobile Menu Start Here -->
    <div class="mobile-menu">
        <nav class="mobile-header d-xl-none">
            <div class="header-logo"><a href="index.html" class="logo"><img src="assets/images/logo/01.png"
                        alt="logo"></a>
            </div>
            <div class="header-bar"><span></span><span></span><span></span></div>
        </nav>
        <nav class="menu">
            <div class="mobile-menu-area d-xl-none">
                <div class="mobile-menu-area-inner scrollbar">
                    <div class="mobile-search"><input type="text" placeholder="Search Here........."><button
                            type="submit"><i class="icofont-search-2"></i></button></div>
                    <ul>
                        <li><a class="active" href="#0">Home</a>
                            <ul>
                                <li><a class="active" href="index.html">Home Page One</a></li>
                                <li><a href="index-2.html">Home Page Two</a></li>
                                <li><a href="index-3.html">Home Page Three</a></li>
                                <li><a href="index-4.html">Home Page Four</a></li>
                            </ul>
                        </li>
                        <li><a href="about.html">About</a></li>
                        <li><a href="#0">Pages</a>
                            <ul>
                                <li><a href="#0">Category</a>
                                    <ul>
                                        <li><a href="food-menu.html">Food Category</a></li>
                                        <li><a href="menu-card.html">Category style 1</a></li>
                                        <li><a href="menu-card-2.html">Category style 2</a></li>
                                    </ul>
                                </li>
                                <li><a href="#0">Chef</a>
                                    <ul>
                                        <li><a href="homechef.html">Home Chef</a></li>
                                        <li><a href="homechef-single.html">Home Chef Single</a></li>
                                    </ul>
                                </li>
                                <li><a href="recepi-single.html">Single Recipe</a></li>
                                <li><a href="404.html">404 Page</a></li>
                                <li><a href="coming-soon.html">Coming Soon Page</a></li>
                            </ul>
                        </li>
                        <li><a href="#0">Blog</a>
                            <ul>
                                <li><a href="blog.html">Blog</a></li>
                                <li><a href="blog-single.html">Blog Single</a></li>
                            </ul>
                        </li>
                        <li><a href="#0">Shop</a>
                            <ul>
                                <li><a href="shop-page.html">Shop Page</a></li>
                                <li><a href="shop-single.html">Shop Single style-1</a></li>
                                <li><a href="shop-single-2.html">Shop Single style-2</a></li>
                                <li><a href="cart-page.html">Cart Page</a></li>
                            </ul>
                        </li>
                        <li><a href="contact-us.html">Contact</a></li>
                    </ul>
                    <div class="scocial-media"><a href="#" class="facebook"><i class="icofont-facebook"></i></a><a
                            href="#" class="twitter"><i class="icofont-twitter"></i></a><a href="#" class="linkedin"><i
                                class="icofont-linkedin"></i></a><a href="#" class="vimeo"><i
                                class="icofont-vimeo"></i></a></div>
                </div>
            </div>
        </nav>
    </div><!-- Mobile Menu Ending Here -->
    <!-- header section start -->
    <header class="header-section d-xl-block d-none">
        <div class="container-fluid">
            <div class="header-area">
                <div class="logo"><a href="index.html"><img src="assets/images/logo/01.png" alt="logo"></a></div>
                <div class="main-menu">
                    <ul>
                        <li><a href="about.html">친구찾기</a></li>
                        <li><a href="#0">추천식단</a>
                            <ul>
                                <li><a href="recepi-single.html">지병에 따른 추천</a></li>
                                <li><a href="404.html">음식 분류별 추천</a></li>
                            </ul>
                        <li><a href="about.html">SNS</a></li>
                        </li>
                        <li><a href="contact-us.html">마이 페이지</a></li>
                    </ul>
                </div>
            </div>
        </div>
        </div>
        </div>
        </div>
    </header><!-- header section ending -->

    <!-- partial -->
    <div class="main-panel" style="margin: 20px;">
        <div class="container">


            <div class="row">
                <div class="col-md-4 grid-margin stretch-card">
                    <div class="card">
                        <div class="profile-card">

                            <div class="profile-header">

                                <div class="cover-image">
                                    <img src="https://dimg.donga.com/ugc/CDB/SHINDONGA/Article/61/d7/de/7c/61d7de7c1e57d2738276.jpg"
                                        class="img img-fluid">
                                </div>
                                <div class="user-image">
                                    <img src="assets/images/logo/01.png" class="img">
                                </div>
                            </div>

                            <div class="profile-content">
                                <div class="profile-name">아이디</div>
                                <ul class="profile-info-list">
                                    <a href="" class="profile-info-list-item"><i class="mdi mdi-eye"></i>돌아가기</a>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-8 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <p class="card-title font-weight-bold">회원정보수정</p>
                            <hr>
                            <form action="UpdateCon" method ="post"></form>
                            <li>접속한 아이디 : ${loginMember.username}</li>
                            <li>이메일<input type="email"	maxlength="30" name="useremail" class="input-field" value ="${loginMember.useremail }"	placeholder="이메일을 입력하세요" required></li>
                       


                        </div>
                    </div>
                </div>



                <!-- scrollToTop start here --><a href="#" class="scrollToTop"><i class="icofont-swoosh-up"></i></a>
                <!-- scrollToTop ending here -->
                <script src="assets/js/jquery.js"></script>
                <script src="assets/js/waypoints.min.js"></script>
                <script src="assets/js/bootstrap.min.js"></script>
                <script src="assets/js/isotope.pkgd.min.js"></script>
                <script src="assets/js/wow.min.js"></script>
                <script src="assets/js/swiper.min.js"></script>
                <script src="assets/js/lightcase.js"></script>
                <script src="assets/js/jquery.counterup.min.js"></script>
                <script src="assets/js/functions.js"></script>
                <script src="js/jquery.js"></script>
                <script src="js/jquery.migrate.js"></script>
                <script src="scripts/bootstrap/bootstrap.min.js"></script>
                <script>var $target_end = $(".best-of-the-week");</script>
                <script src="scripts/jquery-number/jquery.number.min.js"></script>
                <script src="scripts/owlcarousel/dist/owl.carousel.min.js"></script>
                <script src="scripts/magnific-popup/dist/jquery.magnific-popup.min.js"></script>
                <script src="scripts/easescroll/jquery.easeScroll.js"></script>
                <script src="scripts/sweetalert/dist/sweetalert.min.js"></script>
                <script src="scripts/toast/jquery.toast.min.js"></script>
                <script src="js/demo.js"></script>
                <script src="js/e-magz.js"></script>
</body>

</html>