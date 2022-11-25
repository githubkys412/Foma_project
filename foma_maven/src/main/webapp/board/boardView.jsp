<%@page import="java.io.PrintWriter"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="com.saeyan.dto.BoardVO"%>
<%@page import="com.foma_java_mvc_folder.domain.Member"%>
<%@page import="com.saeyan.dto.SubBoardVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
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
   href="template/test1_foodblog/assets/css/style.css">
<link rel="stylesheet"
   href="template/test1_foodblog/assets/css/style2.css">
<link rel="shortcut icon"
   href="template/test1_foodblog/assets/images/favicon.png"
   type="image/png">
</head>
<link rel="stylesheet" type="text/css" href="css/shopping.css">
<link rel="stylesheet" type="text/css" href="css/pagekim.css">
</head>
<link rel="stylesheet" type="text/css" href="css/shopping.css">
<script type="text/javascript" src="script/board.js"></script>

</head>
<body>




   <%  List<BoardVO> bd = (List<BoardVO>)session.getAttribute("selectOneBoardByNum");
List<SubBoardVO> sbd = (List<SubBoardVO>)session.getAttribute("selectAllSubBoards");
Member lg = (Member)session.getAttribute("loginMember");
%>

   <header class="header-section d-xl-block d-none">
      <div class="container-fluid">
         <div class="header-area">
            <div class="logo">
               <a href="template/test1_foodblog/index.jsp"><img
                  src="template/test1_foodblog/assets/images/logo/01.png" alt="logo"></a>
            </div>
            <div class="main-menu">
               <ul>
                  <li><a href="template/test1_foodblog/FindFriends.jsp">친구찾기</a></li>

                  <li><a href="">추천식단</a>
                     <ul>
                        <li><a href="template/test1_foodblog/recommendation2.jsp">지병에
                              따른 추천</a></li>
                        <li><a href="template/test1_foodblog/recommendation1.jsp">음식
                              분류별 추천</a></li>
                     </ul></li>

                  <li><a href="template/test1_foodblog/SNS.jsp">SNS</a>
                     <ul>
                        <li><a href="board_index.jsp">게시판</a></li>
                     </ul></li>

                  <li><a href="template/test1_foodblog/mypage.jsp">마이페이지</a>
                     <ul>
                        <li><a href="#">접속한 아이디 : <%=lg.getUsername() %></a></li>
                        <li><a href="Login.jsp">로그아웃</a></li>
                     </ul></li>
               </ul>

            </div>



         </div>
      </div>
      </div>
      </div>
      </div>
   </header>


   <div id="wrap1" align="center">

      <div class="title">
         <h1>게시글 상세보기</h1>
      </div>
   </div>

   <br>
   <div id="imgs">
      <%if(!bd.get(0).getUploadFilePath().equals("none")) {%>
      <img src="fomaimages/<%=bd.get(0).getFileName()%>">
      <!--  
         <img src = "<%=bd.get(0).getUploadFilePath()%>\<%=bd.get(0).getFileName()%>">   
         -->
      <%
      }
      %>
   </div>
   <br>
   <form name="" method="post" action="BoardGoodServlet">
      <%
      if (lg != null) {
      %>
      <input type="hidden" name="username" value="<%=lg.getUsername()%>">
      <%
      }
      %>
      <input type="hidden" name="num" value="<%=bd.get(0).getNum()%>">
      <table id="showlike">
         <tr>
            <th>좋아요 갯수 : <%=bd.get(0).getGood()%>
            </th>
            <%
            if (lg != null) {
            %>
            <td><input type="submit" value="좋아요"></td>
            <%
            }
            %>
         </tr>
      </table>
   </form>
   <br>
   <div class="tabs">
      <table class="table">
         <tr>
            <th>작성자</th>
            <td><%=bd.get(0).getName()%></td>
            <th>이메일</th>
            <td><%=bd.get(0).getEmail()%></td>
         </tr>
         <tr>
            <th>작성일</th>
            <td><%=bd.get(0).getWritedate()%></td>
            <th>조회수</th>
            <td><%=bd.get(0).getReadcount()%></td>
         </tr>
         <tr>
            <th>제목</th>
            <td colspan="3"><%=bd.get(0).getTitle()%></td>

         </tr>
         <tr>
            <th>내용</th>
            <td colspan="3"><pre><%=bd.get(0).getContent()%></pre></td>
         </tr>
      </table>
   </div>
   <br>
   <br>


   
            <table id="comm">
               <tr>
                  <td>댓글</td>
               </tr>
            </table>
            <%
            if (sbd != null) {
               for (SubBoardVO s : sbd) {
            %>
            <form name="frm" method="post" action="SubBoardServlet">
               <input type="hidden" name="num" value="<%=bd.get(0).getNum()%>">
               <input type="hidden" name="subcode" value="delete"> <input
                  type="hidden" name="name" value="<%=s.getName()%>"> <input
                  type="hidden" name="content" value="<%=s.getContent()%>">
               <input type="hidden" name="writedate" value="<%=s.getWritedate()%>">

               <table id="showcomment">
                  <tr action="">

                     <td width="20%" align="center"><%=s.getName()%></td>
                     <td width="54%"><%=s.getContent()%>
                     <td width="16%"><%=s.getWritedate()%></td>
                     <td width="10%"><input type="submit" value="댓글 삭제"></td>
                  </tr>
               </table>
            </form>
            <%
            }
            }
            %>
            <br>
            <form name="frm" method="post" action="SubBoardServlet">
               <input type="hidden" name="num" value="<%=bd.get(0).getNum()%>">
               <input type="hidden" name="subcode" value="insert">
               <table id="inputcomment">
                  <tr action="">
                     <td width="40%">아이디를 입력하세요 <input name="name"></td>
                     <td>댓글을 입력하세요 <input name="content" style="width: 50%;"></td>
                     <td width="10%"><input type="submit" value="댓글 등록"></td>
                  </tr>

               </table>
            </form>

            <br>

            <div class="btns">
               <input type="button" value="게시글 수정"
                  onclick="open_win('BoardServlet?command=board_check_pass_form&num=<%bd.get(0).getNum();%>', 'update')">
               <input type="button" value="게시글 삭제"
                  onclick="open_win('BoardServlet?command=board_check_pass_form&num=<%bd.get(0).getNum();%>', 'delete')">
               <input type="button" value="게시글 리스트"
                  onclick="location.href='BoardServlet?command=board_list'">
            </div>


            <!-- 
      <input type="button" value="게시글 등록"
         onclick="location.href='BoardServlet?command=board_write_form'">
    -->
            <footer class="footer">
               <div class="bg-shape-style"></div>
               <div class="container">
                  <div class="footer-bottom text-center">
                     <p>F.O.M.A 조 나명훈 황윤정 김용선 신은지 박선우</p>
                  </div>
               </div>
            </footer>
</body>
</html>