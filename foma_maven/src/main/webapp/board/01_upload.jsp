<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

이미지를 추가로 업로드 하시겠습니까?
	<form action="../UploadServlet" method="post" enctype="multipart/form-data">
	
		
	<!-- 	
	//글번호 : <input type="text" name="num"><br>
		 제 &nbsp; 목 : <input
			type="text" name="title"><br> 
		 -->
			 파일 지정하기 : <input
			type="file" name="uploadFile"><br> <input type="submit"
			value="전송">
	</form>
	<br>
	<br>
	<br>
	업로드 없이 게시판으로 복귀 하시겠습니까?
	<input type="button" value="게시글 리스트"
			onclick="location.href='../BoardServlet?command=board_list'"> 
</body>
</html>