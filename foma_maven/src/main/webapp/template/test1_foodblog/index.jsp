<%@page import="org.apache.catalina.users.AbstractGroup"%>
<%@page import="BoardListServlet.GoodBoardDesc"%>
<%@page import="java.util.List"%>
<%@page import="com.foma_java_mvc_folder.domain.FMember"%>
<%@page import="com.saeyan.dto.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<!-- favicon -->
<meta name="description"
	content="Magz is a HTML5 & CSS3 magazine template is based on Bootstrap 3.">
<meta name="author" content="Kodinger">
<meta name="keyword"
	content="magz, html5, css3, template, magazine template">
<!-- Shareable -->
<meta property="og:title"
	content="HTML5 & CSS3 magazine template is based on Bootstrap 3" />
<meta property="og:type" content="article" />
<meta property="og:url" content="http://github.com/nauvalazhar/Magz" />
<meta property="og:image"
	content="https://raw.githubusercontent.com/nauvalazhar/Magz/master/images/preview.png" />
<title>FOMA</title>
<!-- Bootstrap -->
<link rel="stylesheet" href="scripts/bootstrap/bootstrap.min.css">
<!-- IonIcons -->
<link rel="stylesheet" href="scripts/ionicons/css/ionicons.min.css">
<!-- Toast -->
<link rel="stylesheet" href="scripts/toast/jquery.toast.min.css">
<!-- OwlCarousel -->
<link rel="stylesheet"
	href="scripts/owlcarousel/dist/assets/owl.carousel.min.css">
<link rel="stylesheet"
	href="scripts/owlcarousel/dist/assets/owl.theme.default.min.css">
<!-- Magnific Popup -->
<link rel="stylesheet"
	href="scripts/magnific-popup/dist/magnific-popup.css">
<link rel="stylesheet" href="scripts/sweetalert/dist/sweetalert.css">
<!-- Custom style -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/skins/all.css">
<link rel="stylesheet" href="css/demo.css">
<link rel="shortcut icon" href="assets/images/favicon.png"
	type="image/png">
<!-- animate scss -->
<link rel="stylesheet" href="assets/css/animate.css">
<!-- bootstarp css -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<!-- icofont -->
<link rel="stylesheet" href="assets/css/icofont.min.css">
<!-- lightcase css -->
<link rel="stylesheet" href="assets/css/lightcase.css">
<!-- swiper css -->
<link rel="stylesheet" href="assets/css/swiper.min.css">
<!-- custom scss -->
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="css/index.css">
<title>FOMA Main</title>
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
	</div>
	<!-- preloader -->

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

	<!-- Banner Section Start Here -->
	<section class="banner">

		<div class="banner-area">
			<div class="container">
				<div class="row">
					<div class="col-xl-8 col-12">
						<div class="banner-content">

							<form action="/foma_maven/SelectfdCon" method="post">
								<div class="codexcoder-selectoption">
									<select name="selectcode">
										<option value="none">음식 검색</option>
										<option value="lowsalt">저염식 검색</option>
										<option value="lowcal">저칼로리 검색</option>
									</select>
								</div>
								<input type="text" name="fd_name"
									placeholder="Enter your food name"> <a
									href="recommendation1.jsp"><button type="submit"></a>
								<i class="icofont-search-2"></i>
								</button>
								<br>
							</form>
							<br>
							<%
							ArrayList<FMember> selectFMember = (ArrayList<FMember>) session.getAttribute("selectFMember");
							%>
							<%
							int endfor = 5;

							//세션에서 정보가 있다면 정보를 가져와서 출력하기					
							if (selectFMember != null) {
								if (selectFMember.size() < 5) {
									endfor = selectFMember.size();
								}
								for (int i = 0; i < endfor; i++) {
							%>
							<%-- <a href = "shop-single.jsp"> <%=	f.getFd_name()%></a>
								 --%>
							<form class="reselt" action="/foma_maven/SelectfdCon"
								method="post">
								<%
								String str = selectFMember.get(i).getFd_name();
								%>
								<input type="text" name="fd_name" value="<%=str%>">
								<!--같이 값을 보내줄 셀렉트코드를 히든값으로 지정한다. 한개검색  -->
								<input type="hidden" name="selectcode" value="one"> <label>
									자세한 정보 클릭!
									<button type="submit">
										<i class="icofont-search-2"></i>
									</button>
								</label>
							</form>
							<br>
							<%
							}
							%>
							<!-- <a href = "recommendation1.jsp"><button>더보기</button></a> -->
							<%
							} else {
							%>
							검색 결과가 출력됩니다
							<%
							}
							%>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="food-category padding-tb"
		style="background-image: url(assets/css/bg-image/category-bg.jpg); background-size: cover;">
		<div class="container">
			<div class="food-box">
				<div class="section-header">
					<h3>🍏카테고리별 음식🍏</h3>
					<h6>먹고싶은 음식 종류를 클릭해주세요👇</h6>


					<!--음식 카테고리 종류 : 곡류 및 서류
과자류
구이류
국 및 탕류
기타
김치류
면 및 만두류
밥류
볶음류
빵류
생채및 무침류
숙채류
아이스크림류
음료 및 차류
장아찌 및 절임류
전.적 및 부침류
젓갈류
조림류
죽 및 스프류
찌개 및 전골류
찜류
튀김류
            -->
				</div>
				<div class="section-wrapper">
					<div class="food-slider">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<div class="food-item">
									<!--검색어에 카테고리 분만 아니라 음식이름도 임시로 적어주어야 한다. 쿼리스트링으로 카테고리값 넘기기  -->
									<div class="food-thumb"
										onclick="location.href='/foma_maven/SelectfdCon?selectcode=cate&fd_category_big_name=밥류&fd_name=temp' ">
										<img src="assets/images/food/01.png" alt="food">
									</div>
									<div class="food-content">
										<a href="#">밥류</a>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="food-item">
									<div class="food-thumb"
										onclick="location.href='/foma_maven/SelectfdCon?selectcode=cate&fd_category_big_name=찌개&fd_name=temp' ">
										<img src="assets/images/food/02.png" alt="food">
									</div>
									<div class="food-content">
										<a href="#">찌개</a>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="food-item">
									<div class="food-thumb"
										onclick="location.href='/foma_maven/SelectfdCon?selectcode=cate&fd_category_big_name=탕류&fd_name=temp' ">
										<img src="assets/images/food/03.png" alt="food">
									</div>
									<div class="food-content">
										<a href="#">국</a>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="food-item">
									<div class="food-thumb"
										onclick="location.href='/foma_maven/SelectfdCon?selectcode=cate&fd_category_big_name=면&fd_name=temp' ">
										<img src="assets/images/food/04.png" alt="food">
									</div>
									<div class="food-content">
										<a href="#">면&만두</a>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="food-item">
									<div class="food-thumb"
										onclick="location.href='/foma_maven/SelectfdCon?selectcode=cate&fd_category_big_name=볶음&fd_general_name=무침&fd_name=temp' ">
										<a href="#"><img src="assets/images/food/05.png"
											alt="food"></a>
									</div>
									<div class="food-content">
										<a href="#">볶음</a>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="food-item">
									<div class="food-thumb"
										onclick="location.href='/foma_maven/SelectfdCon?selectcode=cate&fd_category_big_name=무침&fd_name=temp' ">
										<a href="#"><img src="assets/images/food/06.png"
											alt="food"></a>
									</div>
									<div class="food-content">
										<a href="#">무침</a>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="food-item">
									<div class="food-thumb"
										onclick="location.href='/foma_maven/SelectfdCon?selectcode=cate&fd_category_big_name=숙채&fd_name=temp' ">
										<a href="#"><img src="assets/images/food/07.png"
											alt="food"></a>
									</div>
									<div class="food-content">
										<a href="#">나물류</a>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="food-item">
									<div class="food-thumb"
										onclick="location.href='/foma_maven/SelectfdCon?selectcode=cate&fd_category_big_name=젓갈&fd_name=temp' ">
										<a href="#"><img src="assets/images/food/08.png"
											alt="food"></a>
									</div>
									<div class="food-content">
										<a href="#">젓갈</a>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="food-item">
									<div class="food-thumb"
										onclick="location.href='/foma_maven/SelectfdCon?selectcode=cate&fd_category_big_name=빵&fd_name=temp' ">
										<a href="#"><img src="assets/images/food/09.png"
											alt="food"></a>
									</div>
									<div class="food-content">
										<a href="#">디저트</a>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="food-item">
									<div class="food-thumb"
										onclick="location.href='/foma_maven/SelectfdCon?selectcode=cate&fd_category_big_name=샐러드&fd_name=temp' ">
										<a href="#"><img src="assets/images/food/10.png"
											alt="food"></a>
									</div>
									<div class="food-content">
										<a href="#">샐러드</a>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="food-item">
									<div class="food-thumb"
										onclick="location.href='/foma_maven/SelectfdCon?selectcode=cate&fd_category_big_name=구이&fd_name=temp' ">
										<a href="#"><img src="assets/images/food/11.png"
											alt="food"></a>
									</div>
									<div class="food-content">
										<a href="#">구이</a>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="food-item">
									<div class="food-thumb"
										onclick="location.href='/foma_maven/SelectfdCon?selectcode=cate&fd_category_big_name=찜&fd_name=temp' ">
										<a href="#"><img src="assets/images/food/12.png"
											alt="food"></a>
									</div>
									<div class="food-content">
										<a href="#">찜류</a>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="food-item">
									<div class="food-thumb"
										onclick="location.href='/foma_maven/SelectfdCon?selectcode=cate&fd_category_big_name=적&fd_name=temp' ">
										<a href="#"><img src="assets/images/food/13.png"
											alt="food"></a>
									</div>
									<div class="food-content">
										<a href="#">부침류</a>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="food-item">
									<div class="food-thumb"
										onclick="location.href='/foma_maven/SelectfdCon?selectcode=cate&fd_category_big_name=조림&fd_name=temp' ">
										<a href="#"><img src="assets/images/food/14.png"
											alt="food"></a>
									</div>
									<div class="food-content">
										<a href="#">조림류</a>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="food-item">
									<div class="food-thumb"
										onclick="location.href='/foma_maven/SelectfdCon?selectcode=cate&fd_category_big_name=튀김&fd_name=temp' ">
										<a href="#"><img src="assets/images/food/15.png"
											alt="food"></a>
									</div>
									<div class="food-content">
										<a href="#">튀김류</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="food-slider-next">
						<i class="icofont-double-left"></i>
					</div>
					<div class="food-slider-prev">
						<i class="icofont-double-right"></i>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Banner Section Ending Here -->



	<%
	GoodBoardDesc agb = new GoodBoardDesc();
	agb.service(request, response);
	%>
	<%
	List<BoardVO> gbdo = (List<BoardVO>) session.getAttribute("selectgoodBoardsdesc");

	int bgsize = 0;
	if (gbdo.size() > 3) {
		bgsize = 3;
	} else {
		bgsize = gbdo.size();
	}
	%>



	<div class="container">
		<h2 class="text-center">✨인기글 TOP3✨</h2>
		<%
		for (int i = 0; i < bgsize; i++) {
		%>
		<div class="container">
			<div class="well">
				<div class="media">
					<a class="pull-left" href="#"> 
						<% if (gbdo.get(i).getFileName().equals("none")) { %>
						<img src="assets/images/음식 기본 이미지.jpg"> 
						<% } else {%> 
						<img src="<%=gbdo.get(i).getUploadFilePath()%><%=gbdo.get(i).getFileName()%>"  onerror="this.src='assets/images/음식 기본 이미지.jpg'">
						<%
						}
						%>
					</a>
					<div class="media-body">
						<h6 class="media-heading"><%=gbdo.get(i).getName()%></h6>
						<br>
						<p>
							<a
								href="../../BoardServlet?command=board_view&num=<%=gbdo.get(i).getNum()%>">
								<%=gbdo.get(i).getTitle()%>
							</a>
						</p>
						<br>
						<ul class="list-inline list-unstyled">
							<span>👀 <%=gbdo.get(i).getReadcount()%></span>
							<li>|</li>
							<li><span>❤️ <%=gbdo.get(i).getGood()%></span></li>
							<li>|</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<%-- <div class="card">
			<div class="card-body">
				<div class="row">
					<div class="col-md-2">
						<img src="https://image.ibb.co/jw55Ex/def_face.jpg"
							class="img img-rounded img-fluid" />
						<p class="text-secondary text-center">닉네임 : <%=gbdo.get(i).getName() %></p>
					</div>
					<div class="col-md-10"><br>
						<p>
							<a class="float-left" ><strong style="font-size: 23px;">좋아요❤️ <%=gbdo.get(i).getGood()%>개</strong></a> 
							<span class="float-right"><i
								class="text-warning fa fa-star"></i></span> <span class="float-right"><i
								class="text-warning fa fa-star"></i></span> <span class="float-right"><i
								class="text-warning fa fa-star"></i></span> <span class="float-right"><i
								class="text-warning fa fa-star"></i></span>

						</p>
						<div class="clearfix"></div>
						<br>
						
						<p style="font-size:35px; padding-top:20px; font-family: 웰컴체 Regular;"><a href="../../BoardServlet?command=board_view&num=<%=gbdo.get(i).getNum() %>">인기글 제목 :
						<%=gbdo.get(i).getTitle() %> </a></p>
						
					
					</div>
				</div>

			</div> --%>
		<%
		}
		%>

	</div>



	<footer class="footer">
		<div class="bg-shape-style"></div>
		<div class="container">
			<div class="footer-bottom text-center">
				<p>F.O.M.A 조 나명훈 황윤정 김용선 신지은 박선우</p>
			</div>
		</div>
	</footer>








	<a href="#" class="scrollToTop"><i class="icofont-swoosh-up"></i></a>
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
	<script>
		var $target_end = $(".best-of-the-week");
	</script>
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