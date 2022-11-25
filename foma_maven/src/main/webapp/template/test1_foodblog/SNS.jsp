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
<title>FOMA-친구 찾기</title>
</head>
</head>
<body>
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

						<li><a href="SNS.jsp">SNS</a>
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
	
	<!-- Popular Food Section Start Here -->
	<section class="page-header">
		<div class="container">
			<div class="pageTitle">
				<h3>
					Post <a href="add.html"><button type="submit" id="search">
							<img src="images/addpost.png" />
						</button></a>
				</h3>
			</div>
		</div>
		</div>
	</section>
	<!-- Start of the post -->
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
		<div class="postPage">
			<div class="post">
				<div class="idPic">
					<a href="#"> <img src="images/user.png" /> <span>
							Username </span>
					</a>
				</div>
				<div class="options">
					<!-- <button class="left"><img src="images/previous.png" /></button> -->
					<ul class="images">
						<li><img src="assets/images/gallery/01.jpg" alt="image" /></li>
						<!-- <li><img src="assets/images/gallery/02.jpg" alt="image" /></li>
              <li><img src="assets/images/gallery/03.jpg" alt="image" /></li> -->
					</ul>
					<!-- <button class="right"><img src="images/next.png" /></button> -->
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
		<div class="postPage">
			<div class="post">
				<div class="idPic">
					<a href="#"> <img src="images/user.png" /> <span>
							Username </span>
					</a>
				</div>
				<div class="options">
					<!-- <button class="left"><img src="images/previous.png" /></button> -->
					<ul class="images">
						<li><img src="assets/images/gallery/01.jpg" alt="image" /></li>
						<!-- <li><img src="assets/images/gallery/02.jpg" alt="image" /></li>
              <li><img src="assets/images/gallery/03.jpg" alt="image" /></li> -->
					</ul>
					<!-- <button class="right"><img src="images/next.png" /></button> -->
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

	<footer class="footer">
		<div class="bg-shape-style"></div>
		<div class="container">
			<div class="footer-bottom text-center">
				<p>
					&copy; 2019 <a href="http://www.bootstrapmb.com/"><span>Mezban</span></a>Design
					by <a href="#"><span>FoxCoders</span></a>.
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