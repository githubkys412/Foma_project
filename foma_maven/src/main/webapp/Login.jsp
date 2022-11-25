<%@page import="com.foma_java_mvc_folder.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<meta charset="UTF-8">
<link rel="shortcut icon" href="template/test1_foodblog/assets/images/favicon.png"
	type="image/png">
<title>로그인 / 회원가입</title>
<link rel="stylesheet" href="Login.css">
<link rel="stylesheet" href="Login.css">
<link rel="stylesheet" href="Login.css">
</head>

<body>

	<header class="header-section d-xl-block d-none">
		<div class="container-fluid">
			<div class="header-area">
				<div class="logo">
					<a href="Login.jsp"><img src="template/test1_foodblog/assets/images/logo/01.png" alt="logo"></a>
				</div>
			</div>
		</div>
		
	</header>
	<!--로그인 했을시 멤버를 가져오기위해 멤버 선언  -->
	<%
	Member loginMembr = (Member) session.getAttribute("loginMember");
	%>

	<div class="cotn_principal">
		<div class="cont_centrar">

			<div class="cont_login">
				<div class="cont_info_log_sign_up">
					<div class="col_md_login">
						<div class="cont_ba_opcitiy">

							<h2>로그인</h2>
							<p></p>
							<button class="btn_login" onclick="cambiar_login()">LOGIN</button>
						</div>
					</div>
					<div class="col_md_sign_up">
						<div class="cont_ba_opcitiy">
							<h2>회원가입</h2>


							<p></p>

							<button class="btn_sign_up" onclick="cambiar_sign_up()">SIGN
								UP</button>
						</div>
					</div>
				</div>


				<div class="cont_back_info">
					<div class="cont_img_back_grey">
						<img
							src="https://www.gtagangwars.de/suite/images/styleLogo-6bd77433ddf78bd8477ea7306e804f677bc925d0.png"
							alt="" />
					</div>

				</div>
				<div class="cont_forms">
					<div class="cont_img_back_">
						<img
							src="https://www.gtagangwars.de/suite/images/styleLogo-6bd77433ddf78bd8477ea7306e804f677bc925d0.png"
							alt="" />
					</div>


                <form id="login" action="LoginCon" class="input-group" method="post">
                    <div class="cont_form_login">
                        <a href="#" onclick="ocultar_login_sign_up()"><i class="material-icons">X</i></a>
                        <h2>로그인</h2>
                        <input type="text" maxlength="10" name="username" class="input-field" placeholder="이름을 입력하세요"
                            required>	
                        <input type="password" maxlength="10" name="userpw" class="input-field"
                            placeholder="패스워드를 입력하세요" required>
                            
                        <button class="submit btn_login" onclick="cambiar_login()">LOGIN</button>
                    </div>
                </form>

					<form id="login" action="LoginCon" class="input-group"
						method="post">
						<div class="cont_form_login">
							<a href="#" onclick="ocultar_login_sign_up()"><i
								class="material-icons">X</i></a>
							<h2>로그인</h2>
							<input type="text" maxlength="10" name="username"
								class="input-field" placeholder="이름을 입력하세요" required> <input
								type="password" maxlength="10" name="userpw" class="input-field"
								placeholder="패스워드를 입력하세요" required>


							<button class="submit btn_login" onclick="cambiar_login()">LOGIN</button>
						</div>
					</form>

					<form id="register" action="JoinCon" class="input-group"
						method="post">
						<div class="cont_form_sign_up">
							<a href="#" onclick="ocultar_login_sign_up()"><i
								class="material-icons">X</i></a>
							<h2>회원가입</h2>
							<input type="text" maxlength="10" name="username"
								class="input-field" placeholder="아이디를 입력하세요" required> <input
								type="password" maxlength="10" name="userpw" class="input-field"
								placeholder="패스워드를 입력하세요" required> <input type="email"
								maxlength="30" name="useremail" class="input-field"
								placeholder="이메일을 입력하세요" required> <input type="number"
								name="userage" class="input-field" max="200"
								placeholder="나이를 입력하세요" required> <input type="number"
								name="userheight" class="input-field" max="300"
								placeholder="키(신장)을 입력하세요" required> <input
								type="number" name="userweight" class="input-field" max="500"
								placeholder="몸무게를 입력하세요" required>
							<div style="margin: 10px;">
								<label> <input type="checkbox" name="userdiabetes">
									당뇨병
								</label> <label> <input type="checkbox" name="userhbp">고혈압
								</label>
							</div>

							<button class="submit btn_sign_up" onclick="cambiar_sign_up()">SIGN
								UP</button>

						</div>
				</div>

			</div>
		</div>
	</div>
	</form>
	<footer class="footer">
		<div class="bg-shape-style"></div>
		<div class="container">
			<div class="footer-bottom text-center">
				<p>
					F.O.M.A 조 나명훈 황윤정 김용선 신지은 박선우
				</p>
			</div>
		</div>
	</footer>
	

	<script>
		function cambiar_login() {
			document.querySelector('.cont_forms').className = "cont_forms cont_forms_active_login";
			document.querySelector('.cont_form_login').style.display = "block";
			document.querySelector('.cont_form_sign_up').style.opacity = "0";

			setTimeout(function() {
				document.querySelector('.cont_form_login').style.opacity = "1";
			}, 400);

			setTimeout(
					function() {
						document.querySelector('.cont_form_sign_up').style.display = "none";
					}, 200);
		}

		function cambiar_sign_up(at) {
			document.querySelector('.cont_forms').className = "cont_forms cont_forms_active_sign_up";
			document.querySelector('.cont_form_sign_up').style.display = "block";
			document.querySelector('.cont_form_login').style.opacity = "0";

			setTimeout(
					function() {
						document.querySelector('.cont_form_sign_up').style.opacity = "1";
					}, 100);

			setTimeout(
					function() {
						document.querySelector('.cont_form_login').style.display = "none";
					}, 400);

		}

		function ocultar_login_sign_up() {

			document.querySelector('.cont_forms').className = "cont_forms";
			document.querySelector('.cont_form_sign_up').style.opacity = "0";
			document.querySelector('.cont_form_login').style.opacity = "0";

			setTimeout(
					function() {
						document.querySelector('.cont_form_sign_up').style.display = "none";
						document.querySelector('.cont_form_login').style.display = "none";
					}, 500);

		}
	</script>
</body>
</html>