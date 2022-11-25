package com.foma_java_mvc_folder.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.foma_java_mvc_folder.domain.Member;
import com.foma_java_mvc_folder.domain.MemberDAO;

public class LoginCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[LoginCon]");
		
		//0. post방식 인코딩
		request.setCharacterEncoding("utf-8");
		//1. 파라미터 수집
		
		  String username = request.getParameter("username");
		  String userpw = request.getParameter("userpw");
		  
		  //2. 수집된 데이터를 Member 객체에 담기
		  
		   Member vo = new Member(username, userpw);
		 
		/*
		 * String username = request.getParameter("username"); String userpw=
		 * request.getParameter("userpw"); String useremail =
		 * request.getParameter("useremail"); double userage =
		 * Double.parseDouble(request.getParameter("userage")); double userheight =
		 * Double.parseDouble(request.getParameter("userheight")); double userweight =
		 * Double.parseDouble(request.getParameter("userweight")); String userdiabetes =
		 * request.getParameter("userdiabetes"); String userhbp =
		 * request.getParameter("userhbp"); double userbmi=
		 * Double.parseDouble(request.getParameter("userbmi"));
		 * 
		 * Member vo = new Member(username, userpw, useremail, userage, userheight,
		 * userweight, userdiabetes, userhbp,userbmi);
		 *///3. MeberMapper.xml에서 SQL문 만ㄴ들고 오기
		
		
		//4. MemberDAO 가서 메소드 만들고 오기
		
		//5. MemberDAO객체 생성 메소드 호출
		
		//5-5 아이디 접속 검사
		MemberDAO dao = new MemberDAO();
		Member checkMembernopw = dao.checkMembernopw(vo);
		
				
				//6. 명령후 처리
		if(checkMembernopw != null) { //아이디 체크후 아이디가 있다면
			System.out.println("아이디 체크 성공!");
			//세션에 로그인 정보 저장, 로그인 정보가 유지되도록 세션에 저장
			
			Member checkMember = dao.checkMember(vo);
			
			if(checkMember != null) {
				System.out.println("로그인 성공!");
				//세션에 로그인 정보 저장, 로그인 정보가 유지되도록 세션에 저장
				
				//1. 세션 객체 생성
				HttpSession session = request.getSession();
				//2. 세션에 저장
				session.setAttribute("loginMember", checkMember);
				response.sendRedirect("./template/test1_foodblog/index.jsp");
				return ;
				//main.jsp로 이동
				}else {
				System.out.println("로그인 실패!");
				response.sendRedirect("./error_pages/error_login_pw.jsp");
				return ;
				//main.jsp로 이동
					}
			
			}
	
		else {
			System.out.println("아이디 체크 실패!");
			
			response.sendRedirect("./error_pages/error_login_id.jsp");
			return ;
			
			//main.jsp로 이동
				}

		
		
		
		//6. 명령후 처리
		
		
		
	} //serviece메소드 끝

}
