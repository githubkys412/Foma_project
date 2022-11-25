<%@page import="com.foma_java_mvc_folder.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<% Member login = (Member)session.getAttribute("loginMember"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
        <title>FOMA 회원탈퇴</title>
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
        <link rel="stylesheet" href="assets/css/style2.css">
       
        
      
        <title>마이 페이지</title>
    </head>
<body>
    <div class="preloader">
        <div class="load loade">
            <hr />
            <hr />
            <hr />
            <hr />
        </div>
    </div>

    <!-- header section start -->

	<header class="header-section d-xl-block d-none">
		<div class="container-fluid">
			<div class="header-area">
				<div class="logo">
					<a href="index.jsp"><img src="assets/images/logo/01.png"
						alt="logo"></a>
				</div>
				<div class="main-menu">
					<ul>
						<li><a href="FindFriends.jsp">친구찾기</a></li>

						<li><a href="">추천식단</a>
							<ul>
								<li><a href="recommendation2.jsp">지병에 따른 추천</a></li>
								<li><a href="recommendation1.jsp">음식 분류별 추천</a></li>
							</ul></li>

						<li><a href="">SNS</a>
							<ul>
								<li><a href="../../board_index.jsp">게시판</a></li>
							</ul></li>

						<li><a href="mypage.jsp">마이페이지</a>
							<ul>
								<li><a href="#">접속한 아이디 : ${loginMember.username}</a></li>
								<li><a href="../../Login.jsp">로그아웃</a></li>
							</ul></li>
					</ul>

				</div>



			</div>
		</div>
		</div>
		</div>
		</div>
	</header>
	<!-- header section ending -->
	
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
                                <div class="profile-name">아이디 : ${loginMember.username}</div>
                                <ul class="profile-info-list">
                                    <a href="mypage.jsp" class="profile-info-list-item"><i class="mdi mdi-eye"></i>돌아가기</a>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

				<div class="col-md-8 grid-margin stretch-card" id="wrapper">
					<!-- Menu -->
					<nav class="card" id="Update">
					<ul class="actions vertical card-body">
						<li>
							<h5>회원탈퇴</h5>
						</li>
						<hr>
						<!--변경할 회원정보를 담아서 updatecon으로 보내기  -->
						<form action="../../DeleteCon" method ="post">

							<table style="border: none;">
							
								<tr>
									<!-- 첫번째 줄 시작 -->
									<td style="width: 150px; height: 50px; text-align: center;">접속한
										아이디</td>
									<td>${loginMember.username}</td>
								</tr>
								<!-- 첫번째 줄 끝 -->
								<!-- 비밀번호 변경이 추가가 안되어있음 그래서 추가함 -->
								<tr>
									<!-- 두번째 줄 시작 -->
									<td style="width: 150px; height: 50px; text-align: center;">비밀번호</td>
									<td><input type="password" maxlength="30" name="userpw"
										class="input-field" value="${loginMember.userpw }"
										placeholder="비밀번호를 입력하세요" required></td>
								</tr>
								
								
							</table><br>
							

							
							
							<input type="submit" style="background-color: #F1F2F3; border: none; padding: 15px; width: 100px;" value="탈퇴" id = "clicka">
							<input type="button" style="background-color: #F1F2F3; border: none; padding: 15px; width: 100px;" value="취소" onclick="location.href='index.jsp'">
							
						</form>
						<hr>
					</ul>
					</nav>
				</div>
				</div>
				</div>
				</div>
				
	
				
<footer class = "footer">
		<div class="bg-shape-style"></div>
		<div class="container">
			<div class="footer-bottom text-center">
				<p>
					F.O.M.A 조 나명훈 황윤정 김용선 신은지 박선우
				</p>
			</div>
		</div>
	</footer>






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