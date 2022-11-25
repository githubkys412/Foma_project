<%@page import="com.foma_java_mvc_folder.domain.Member"%>
<%@page import="com.saeyan.dao.BoardDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.foma_java_mvc_folder.domain.FMember"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@page import="com.saeyan.dto.BoardVO"%>
<%@page import="com.foma_java_mvc_folder.*"%>
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
<title>FOMA 내정보</title>
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
						<li><a href="#">추천식단</a>
							<ul>
								<li><a href="recommendation2.jsp">지병에 따른 추천</a></li>
								<li><a href="recommendation1.jsp">음식 분류별 추천</a></li>
							</ul></li>
						<li><a href="#">SNS</a>
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

	<div class="main-panel" style="margin: 20px;">
		<div class="container">


			<div class="row">
				<div class="col-md-4 grid-margin stretch-card">
					<div class="card">
						<div class="profile-card">

							<div class="profile-header">

								<div class="cover-image">
									<img
										src="https://dimg.donga.com/ugc/CDB/SHINDONGA/Article/61/d7/de/7c/61d7de7c1e57d2738276.jpg"
										class="img img-fluid">
								</div>
								<div class="user-image">
									<img src="assets/images/logo/01.png" class="img">
								</div>
							</div>

							<div class="profile-content">
								<div class="profile-name">아이디 : ${loginMember.username}</div>
								<ul class="profile-info-list">
									<a href="../../Login.jsp" class="profile-info-list-item"><i
										class="mdi mdi-eye"></i>로그아웃</a>
									<a href="update.jsp" class="profile-info-list-item"><i
										class="mdi mdi-eye"></i>회원정보수정</a>
									<a href="delete_member.jsp" class="profile-info-list-item"><i
										class="mdi mdi-eye"></i>회원탈퇴</a>

								</ul>
							</div>
						</div>
					</div>
				</div>
				<%
				Member member = (Member) session.getAttribute("loginMember");
				
				BoardDAO bdao = new BoardDAO();

				boolean checkmemeber = false;

				int endbvosize = 0;
				String str="";
				String str2="";

				List<BoardVO> bvo = new ArrayList<>();
				if (member != null) {
					str=member.getUsername();
					
						if(bdao.selectBoardsbyname(str)!=null){
					bvo = bdao.selectBoardsbyname(str);
					if(bvo.size()!=0){
					if (!bvo.isEmpty() && bvo != null) {
						checkmemeber = true;
						endbvosize = bvo.size();
					}
					}
						}
				}
				
				%>

				<div class="col-md-8 grid-margin stretch-card">
					<div class="card">
						<div class="card-body">
							<p class="card-title font-weight-bold">나의 페이지</p>
							<hr>

							<%
							if (checkmemeber) {
								for (int i = 0; i < endbvosize; i++) {
							%>
						
							<div class="container">
								<div class="well">
									<div class="media">
										<a class="pull-left" href="#"> 
										<% if (bvo.get(i).getFileName().equals("none")) { %>
											<img src="assets/images/음식 기본 이미지.jpg"> 
											<% } else { %> 
											<img src="<%=bvo.get(i).getUploadFilePath()%><%=bvo.get(i).getFileName()%>" onerror="this.src='assets/images/음식 기본 이미지.jpg'">
											<%
											}
											%>
										</a>
										<div class="media-body">
											<h6 class="media-heading"><%=bvo.get(i).getName()%></h6>
											<br>
											<p>
												<a
													href="BoardServlet?command=board_view&num=<%=bvo.get(i).getNum()%>">
													<%=bvo.get(i).getTitle()%>
												</a>
											</p>
											<br>
											<ul class="list-inline list-unstyled">
												<span>👀 <%=bvo.get(i).getReadcount()%></span>
												<li>|</li>
												<li><span>❤️ <%=bvo.get(i).getGood()%></span></li>
												<li>|</li>
											
											</ul>
										</div>
									</div>
								</div>
							</div>
							<!--  
								<img src="assets/images/blog/01.jpg"
								style="width: 150px; height: 150px;"> 
							-->
							<%-- <span>나의 작성글 : </span>
								<span class="about-item-name"> <%=bvo.get(i).getTitle() %> </span>
								<span class="about-item-detail">좋아요 ❤️ <%=bvo.get(i).getGood() %> 개 </span> 
								<a href="../../BoardServlet?command=board_view&num=<%=bvo.get(i).getNum() %>" class="about-item-edit">Edit</a>	
								</li>
								<br>
								<br> --%>

							<%
							}
							}
							%>



						</div>
					</div>
				</div>


			</div>
		</div>
	</div>

	<footer class="footer">
		<div class="bg-shape-style"></div>
		<div class="container">
			<div class="footer-bottom text-center">
				<p>F.O.M.A 조 나명훈 황윤정 김용선 신은지 박선우</p>
			</div>
		</div>
	</footer>



	<!-- scrollToTop start here -->
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