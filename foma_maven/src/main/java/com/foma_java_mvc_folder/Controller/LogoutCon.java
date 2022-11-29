package com.foma_java_mvc_folder.Controller;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class LogoutCon extends HttpServlet { // 로그아웃 클래스
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//로그인 정보를 세션에서 삭제!!
		HttpSession session = request.getSession();
		session.removeAttribute("loginMember");
		//다시 main.jsp로 이동
		response.sendRedirect("Login.jsp");
		System.out.println("로그아웃!");
	}

}
