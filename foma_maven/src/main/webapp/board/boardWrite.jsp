<%@page import="com.foma_java_mvc_folder.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.foma_java_mvc_folder.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>FOMA 게시글 등록</title>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>FOMA 게시판 안</title>
<link rel="shortcut icon"
   href="template/test1_foodblog/assets/images/favicon.png"
   type="image/png">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>FOMA 게시판</title>
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
<link rel="stylesheet" href="../assets/css/animate.css">
<!-- bootstarp css -->
<link rel="stylesheet" href="../assets/css/bootstrap.min.css">
<!-- icofont -->
<link rel="stylesheet" href="../assets/css/icofont.min.css">
<!-- lightcase css -->
<link rel="stylesheet" href="../assets/css/lightcase.css">
<!-- swiper css -->
<link rel="stylesheet" href="../assets/css/swiper.min.css">
<!-- custom scss -->
<link rel="stylesheet"
   href="../template/test1_foodblog/assets/css/style.css">
<link rel="stylesheet"
   href="../template/test1_foodblog/assets/css/style2.css">
<link rel="shortcut icon"
   href="../template/test1_foodblog/assets/images/favicon.png"
   type="image/png">
</head>
<link rel="stylesheet" type="text/css" href="css/shopping.css">
<link rel="stylesheet" type="text/css" href="css/pagekim.css">
<link rel="stylesheet" type="text/css" href="../css/shopping.css">
<script type="text/javascript" src="../script/board.js"></script>
<link rel="shortcut icon"
   href="template/test1_foodblog/assets/images/favicon.png"
   type="image/png">

</head>
<body>
<%
   
   Member member = (Member) session.getAttribute("loginMember");
   
   %>
   <header class="header-section d-xl-block d-none">
   <div class="container-fluid">
      <div class="header-area">
         <div class="logo">
            <a href="../template/test1_foodblog/index.jsp"><img
               src="../template/test1_foodblog/assets/images/logo/01.png" alt="logo"></a>
         </div>
         <div class="main-menu">
            <ul>
               <li><a href="../template/test1_foodblog/FindFriends.jsp">친구찾기</a></li>

               <li><a href="">추천식단</a>
                  <ul>
                     <li><a href="../template/test1_foodblog/recommendation2.jsp">지병에
                           따른 추천</a></li>
                     <li><a href="../template/test1_foodblog/recommendation1.jsp">음식
                           분류별 추천</a></li>
                  </ul></li>

               <li><a href="../template/test1_foodblog/SNS.jsp">SNS</a>
                  <ul>
                     <li><a href="board_index.jsp">게시판</a></li>
                  </ul></li>

               <li><a href="../template/test1_foodblog/mypage.jsp">마이페이지</a>
                  <ul>
                     <li><a href="#">접속한 아이디 : <%=member.getUsername()%></a></li>
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

   <div id="wrap" align="center">
      <h2>게시글 등록</h2>
      
      <br>
      <form name="frm" action="../UploadServlet" method="post" enctype="multipart/form-data">
         <input type="hidden" name="command" value="board_write">
         <table id="post">
            <tr>
               <th>작성자</th>
               <%
               if (member != null) {
               %>

               <td><%=member.getUsername()%><input type="hidden" name="name"
                  value="<%=member.getUsername()%>"></td>
               <%
               }
               %>
            </tr>
            <tr>
               <th>비밀번호</th>
               <td><input type="password" name="pass"> * 필수 (게시물 수정
                  삭제시 필요합니다.)</td>
            </tr>
            <tr>
               <th>이메일</th>
               <td><input type="text" name="email"></td>
            </tr>
            <tr>
               <th>제목</th>
               <td><input type="text" size="70" name="title"> * 필수</td>
            </tr>
            <tr>
               <th>내용</th>
               <td><textarea cols="70" rows="15" name="content"></textarea></td>
            </tr>
            <tr>
               <th> 파일 업로드</th>
               <td><input type="file" name="uploadFile"><br> </td>
            </tr>
            
            
         </table>
         <br> <br> <input type="submit" value="등록"
            onclick="return boardCheck()"> <input type="reset"
            value="다시 작성"> <input type="button" value="목록"
            onclick="location.href='../BoardServlet?command=board_list'">
         <!-- 
            response.sendRedirect("BoardServlet?command=board_list");
             -->
      </form>
   </div>
</body>
</html>