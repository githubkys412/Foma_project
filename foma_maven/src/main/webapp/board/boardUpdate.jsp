<%@page import="java.io.PrintWriter"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>			
<%@page import="com.saeyan.dto.BoardVO"%>	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/shopping.css">
<link rel="stylesheet" type="text/css" href="css/pagekim.css">
<script type="text/javascript" src="script/board.js"></script>
</head>
<body>
<%  List<BoardVO> bd = (List<BoardVO>)session.getAttribute("selectOneBoardByNum");%>

	<div id="wrap" align="center">
		<h1>게시글 수정</h1>
		<form name="frm" action="UpdateServlet" method="post" enctype="multipart/form-data">
			<input type="hidden" name="command" value="board_update"> <input
				type="hidden" name="num" value="<%=bd.get(0).getNum() %>">
			<table>
				<tr>
					<th>작성자</th>
					<td><input type="text" size="12" name="name"
						value="<%=bd.get(0).getName() %>"> * 필수</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" size="12" name="pass"> *
						필수 (게시물 수정 삭제시 필요합니다.)</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td><input type="text" size="40" maxlength="50" name="email"
						value="<%=bd.get(0).getEmail() %>"></td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text" size="70" name="title"
						value="<%=bd.get(0).getTitle() %>"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea cols="70" rows="15" name="content"><%=bd.get(0).getContent()%></textarea></td>
				</tr>
				<tr>
					<th> 파일 업로드</th>
					<td><input type="file" name="uploadFile" value = "<%=bd.get(0).getFileName()%>"><br>기존 파일 : <%=bd.get(0).getFileName()%> </td>
				</tr>
			</table>
			<br>
			<br> <input type="submit" value="등록"
				onclick="return boardCheck()"> <input type="reset"
				value="다시 작성"> <input type="button" value="목록"
				onclick="location.href='BoardServlet?command=board_list'">
		</form>
	</div>
</body>
</html>