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
<title>FOMA</title>
<link rel="shortcut icon" href="template/test1_foodblog/assets/images/favicon.png"
	type="image/png">
</head>
<body>
<script type="text/javascript">
<%  List<BoardVO> bd = (List<BoardVO>)session.getAttribute("selectOneBoardByNum");%>


if (window.name == "update") {
window.opener.parent.location.href = "BoardServlet?command=board_update_form&num=<%bd.get(0).getNum();%>";
} else if (window.name == 'delete') {
alert('삭제되었습니다.');
window.opener.parent.location.href = "BoardServlet?command=board_delete&num=<%bd.get(0).getNum();%>";
}
window.close();
</script>
</body>
</html>