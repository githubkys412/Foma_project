<%@page import="BoardListServlet.Myutil"%>
<%@page import="java.util.List"%>
<%@page import="com.foma_java_mvc_folder.domain.Member"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.foma_java_mvc_folder.domain.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="assets/css/sickness.css" />
<link href="assets/css/animate.css">
<link rel="stylesheet" href="css/LikeFind.css" />
<link rel="stylesheet" href="js/LikeFind.js" />
<title>FOMA-친구찾기</title>
</head>
<body>
<%Member member =(Member) session.getAttribute("loginMember");
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
							<li><a href="#">
							<%
				if (member != null) {
				%> 접속한 아이디 ; <%=member.getUsername()%>
				<%
			} else {
			%>
			로그인 해야 글쓰기가 가능합니다
			</a>
			</td>
			<%
			}
			%>
							<%-- <%=member.getUsername() %> --%></a></li>
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

	<!-- Page Header Section Start Here -->
	<section class="page-header">
	<div class="container">
		<div class="pageTitle">
			<div class="search-title">
				<!-- <h5>Add Friends</h5> -->
				<br>
				<form class="result" action="/foma_maven/findIdCon" method="post">
					<div class="codexcoder-selectoption">
						<input type="text" name="find" placeholder="내 친구 id 입력" />
						<button type="submit" id="search">
							<img src="images/search.png" />
						</button>
						<br>
					</div>
				</form>
				<br>
			</div>
		</div>
	</div>
	</section>
	<div class="result1">
		<p class="p1">✔️검색한 아이디 목록</p>
			<%
			//세션에서 정보가 있다면 정보를 가져와서 출력하기
			List<Member> findIdMember = (List<Member>) session.getAttribute("findIdMember");
			%>

			<%
			//session객체에 id가 session 있으면
			if (findIdMember != null) {
				for (Member m : findIdMember) {
			%>

			<%-- <form class="result" action="/foma_maven/findIdCon" method="post">
				<%=m.getUsername()%>
					<input type="text" name="find" value="<%=m.getUsername() %>">
					<input type="hidden" name="find" > 
					<button type="submit">
					<!-- 이미지 수정 필요함! -->
						<!-- <img src="images/spinner.png" /> -->
					</button>
				</form> --%>
		<div class="result">
			<span><%=m.getUsername()%></span>
			<br>
		</div>
		<%
		}
		%>
		<p class="p2" style="font-size: 25px; margin-top: 15px;">👉검색결과 : <%=findIdMember.size()%>개 검색</p>
	</div>
		<%
		} else {
		%>
		<%
		}
		%>
		
	</div>
	<!-- <div class="container1"> -->
		<!-- 페이징 처리 테스트 -->
		<%-- <div style="padding-top: 	20px;">
	
		<%= paging %>
	
	</div> --%>
		<!-- <div class="FindingFriends">
      <div id="fb">
        <div id="fb-top">
          <p><b>Friend Requests</b><span>Find Friends &bull; Settings</span></p>
        </div>
        <a href="#">
          <img src="assets/images/gallery/01.jpg" height="100"
				width="100" alt="Image of woman" />
          <p id="info">
            <b>User Name</b> <br>
            <span>14 mutual friends
          </p>
        </a><div id="b
		utton-block">
          <div id="confirm">Confirm</div>
          <div id="delete">Delete Request</div>
        </div>
      
		</div> -->
		<%-- <table>
				     	<tr>
				     		<th>아이디<br></th>
				     		<td><input type="text" name="find" id="name" value="<% String username = request.getParameter("find");
				     				if (username != null) out.println(username);%>">
				     		</td>
				     		<td><input type="submit" value="친구찾기"></td>
				     			<% MemberDAO dao = new MemberDAO();%>
				     			<% String findIdMember = (String)session.getAttribute("findIdMember");%>
				     			<%
				     			if(findIdMember != null){ 
				     			%>
				     	</tr>
				     	<tr>
				     		<td colspan="6">
				     			<p>검색한 친구들 리스트</p>
				     			<p>아이디</p>
				     			<input type="text" name="find" value="<%=findIdMember %>">
				     			<%=findIdMember  %>
				     		</td>
				     	</tr>
				     	<br>
				     		<%
				     			}else{
				     		%>
				     			아이디를 검색해주세요! --%>
		<%-- <%}%> --%>
		<!-- </table> -->
	<!-- </div> -->


	<!-- Page Header Section Ending Here -->
	<!-- Popular Home Chef Section Start Here -->
	<!-- <div class="FindingFriends">
		<div id="fb">
			<div id="fb-top">
          <p><b>Friend Requests</b><span>Find Friends &bull; Settings</span></p>
        </div>
			<a href="#"> <img src="assets/images/gallery/01.jpg" height="100"
				width="100" alt="Image of woman" />
				<p id="info">
					<b>User Name</b> <br />
					<span>14 mutual friends
				</p>
			</a>
<<<<<<< HEAD
        </p>
        <div id="button-block">
          <div id="confirm">Confirm</div>
        </div>
      </div>
    </div>
    Popular Home Chef Section Ending Here
	Footer Section Start Here
	<footer class="footer">
		<div class="bg-shape-style"></div>
		<div class="container">
			<div class="footer-bottom text-center">
				<p>
					F.O.M.A 조 나명훈 황윤정 김용선 신지은 박선우
				</p>
=======
			<div id="button-block">
				<div id="confirm">Confirm</div>
				<div id="delete">Delete Request</div>
>>>>>>> branch 'master' of https://github.com/2022-SMHRD-KDT-DCX-BIgData-1/FOMA.git
			</div>
		</div>
		<div id="fb">
			<a href="#"> <img src="assets/images/gallery/02.jpg" height="100"
				width="100" alt="Image of woman" />
				<p id="info">
					<b>User Name</b> <br />
				</p>
			</a>
			<div id="button-block">
				<div id="confirm">Confirm</div>
			</div>
		</div>
		<div id="fb">
			<a href="#"> <img src="assets/images/gallery/03.jpg" height="100"
				width="100" alt="Image of woman" />
				<p id="info">
					<b>User Name</b> <br />
				</p>
			</a>
			<div id="button-block">
				<div id="confirm">Confirm</div>
			</div>
		</div>
		<div id="fb">
			<a href="#"> <img src="assets/images/gallery/04.jpg" height="100"
				width="100" alt="Image of woman" />
				<p id="info">
					<b>User Name</b> <br />
				</p>
			</a>
			<div id="button-block">
				<div id="confirm">Confirm</div>
			</div>
		</div>
		<div id="fb">
			<a href="#"> <img src="assets/images/gallery/05.jpg" height="100"
				width="100" alt="Image of woman" />
				<p id="info">
					<b>User Name</b> <br />
				</p>
			</a>
			<div id="button-block">
				<div id="confirm">Confirm</div>
			</div>
		</div>
		<div id="fb">
			<a href="#"> <img src="assets/images/gallery/06.jpg" height="100"
				width="100" alt="Image of woman" />
				<p id="info">
					<b>User Name</b> <br /></a>
			</p>
			<div id="button-block">
				<div id="confirm">Confirm</div>
			</div>
		</div>
	</div> -->
	<!-- Popular Home Chef Section Ending Here -->
	<!-- Footer Section Start Here -->
	<footer class="footer" style="bottom: 0px; /* position: absolute; */ width: -webkit-fill-available; ">
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
</body>
</html>