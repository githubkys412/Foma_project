<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@page import="java.util.List"%>
<%@page import="BoardListServlet.Myutil"%>
<%@page import="com.foma_java_mvc_folder.domain.FMember"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<!-- favicon -->
<link rel="shortcut icon" href="assets/images/favicon.png"
	type="image/png" />
<!-- animate scss -->
<link rel="stylesheet" href="assets/css/animate.css" />
<!-- bootstarp css -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
<!-- icofont -->
<link rel="stylesheet" href="assets/css/icofont.min.css" />
<!-- lightcase css -->
<link rel="stylesheet" href="assets/css/lightcase.css" />
<!-- swiper css -->
<link rel="stylesheet" href="assets/css/swiper.min.css" />
<!-- cusyom scss -->
<link rel="stylesheet" href="assets/css/style.css" />
<link rel="stylesheet" href="assets/css/style2.css" />
<link rel="stylesheet" type="text/css" href="../../css/pagekim.css">
<link rel="stylesheet" href="assets/css/sickness.css" />
<link href="assets/css/animate.css">
<link rel="stylesheet" href="css/LikeFind.css" />
<link rel="stylesheet" href="js/LikeFind.js" />
<link rel="stylesheet" type="text/css" href="css/pagekim.css">
<title>검색한 결과 더보기</title>
</head>
<body>
	<!--음식정보 출력 멤버 선언 -->
              <%
              ArrayList<FMember> f = (ArrayList<FMember>)session.getAttribute("selectFMember");
			  %>  
			  
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
									placeholder="Enter your food name">
								<button type="submit">
									<i class="icofont-search-2"></i>
								</button>
								<br>
							</form>
							<br>
							<%
							ArrayList<FMember> selectFMember = (ArrayList<FMember>) session.getAttribute("selectFMember");
							%>
							<!--페이징 테스트  -->
<%

int pgstart =0;
int pgend = 0;
String paging="";
if(selectFMember!=null){
	request.setCharacterEncoding("utf-8");

	// 파라미터로 넘어온 페이지 번호(JSP에서 page는 예약어로 변수명으로 사용 불가)
	String pageNum = request.getParameter("page");
	int current_page = 1;
	if(pageNum != null) {
		current_page = Integer.parseInt(pageNum);
	}
	
	Myutil util = new Myutil();
	
	int dataCount = selectFMember.size();
	int rows = 10;
	int total_page = util.pageCount(rows, dataCount);
	if(current_page > total_page) {
		current_page = total_page;
	}
	
	String listUrl = "recommendation1.jsp";
	paging = util.paging(current_page, total_page, listUrl);
	
	pgstart = (current_page*10)-10;
	pgend = 10;
	
int endindex = selectFMember.size()%10;
	
	if(selectFMember.size()>10){//목록이 10개 이상

		if(selectFMember.size()-(current_page*10)>0){//남아있는 목록이 10개 이상일경우
			pgend =(current_page*10);
		}else{
			pgend = (current_page*10)-10 + endindex;
		}

		
	}else{
		pgend = selectFMember.size();
	}
}
%>
							<%
							//세션에서 정보가 있다면 정보를 가져와서 출력하기					
							if (selectFMember != null) {
								for (int i=pgstart;i<pgend;i++) {
							%>
							<%-- <a href = "shop-single.jsp"> <%=	f.getFd_name()%></a>
								 --%>
							<form class="result" action="/foma_maven/SelectfdCon" method="post">
								<%
								String str = selectFMember.get(i).getFd_name();
								%>
								<input type="text" name="fd_name" value="<%=str%>">
								<!--같이 값을 보내줄 셀렉트코드를 히든값으로 지정한다. 한개검색  -->
								<input type="hidden" name="selectcode" value="one"> <label style="margin-left:50px;">
									영양소 정보 보기👉
									<button type="submit" style="position:relative; left:20px;">
										<i class="icofont-search-2"></i>
									</button>
								</label>
							</form>
							<br>
							<%
							}
							%>
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
			<div class="container">
	<!-- 
	<h3 style="text-align: center;">페이징 처리 테스트</h3>
	 -->
	<div style="padding-top: 	20px;">
	
		<%= paging %>
	
	</div>
	</section>
	
	<!-- Popular Food Section Start Here -->
	<div class="containerPost">
		<div class="postPage">
			<div class="post">
				<div class="idPic">
					<a href="#"> <img src="images/user.png" /> <span>
							Username </span>
					</a>
				</div>
				<div class="options">
					<!-- <button class="left"><img src="images/previous.png"></button> -->
					<ul class="images">
						<li><img src="assets/images/gallery/01.jpg" alt="image" /></li>
						<!-- <li><img src="assets/images/gallery/02.jpg" alt="image" /></li>
              <li><img src="assets/images/gallery/03.jpg" alt="image" /></li> -->
					</ul>
					<!-- <button class="right"><img src="images/next.png"></button> -->
				</div>
				<div class="likePart">
					<div class="like">
						<button>
							<img src="images/heart.png" />
						</button>
						<span>12 likes</span>
					</div>
				</div>
				<div class="caption">
					<span>내용........</span> <br>
				</div>
				<div class="comment">
					<div class="commentList">
						<ul>
							<a href="#"> username </a> Comment section list
						</ul>
					</div>
					<div class="inputCom">
						<input type="text" name="comment" id="comments" />
						<button type="submit">
							<img src="images/comment.png" />
						</button>
					</div>
				</div>
			</div>
		</div>
		</div>
	<!-- Popular Food Section Ending Here -->
	<!-- Footer Section Start Here -->
	<footer class="footer">
		<div class="bg-shape-style"></div>
		<div class="container">
			<div class="footer-bottom text-center">
				<p>
					F.O.M.A 조 나명훈 황윤정 김용선 신은지 박선우
				</p>
			</div>
		</div>
	</footer>
	<!-- Footer Section Ending Here -->
	<!-- scrollToTop start here -->
	<a href="#" class="scrollToTop"><i
		class="icofont-swoosh-up"></i></a>
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
</body>
</html>