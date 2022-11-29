package com.foma_java_mvc_folder.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.foma_java_mvc_folder.domain.Member;
import com.foma_java_mvc_folder.domain.MemberDAO;


public class DeleteCon extends HttpServlet { // 멤버 삭제 담당 클래스
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//0 post방식 인코딩
		request.setCharacterEncoding("utf-8");
		
		//파라미터 수집
		
		//아이디 비번 --> session에서 가져오기
	
		HttpSession session = request.getSession();
		Member loginMember = (Member)session.getAttribute("loginMember");		
		String username = loginMember.getUsername();
		  String userpw = request.getParameter("userpw");
		
		 Member vo = new Member(username, userpw);
	/*	
		MemberDAO dao = new MemberDAO();
		dao.selectMember(null);*/
		 String str = loginMember.getUserpw();
		 
		
		  if(!str.equals(userpw)) {
			  System.out.println("패스워드 오류");
				response.sendRedirect("./error_pages/error_login_pw.jsp"); 
			  
		  }else {

		//form태그 파라미터 가져오기

		
		//2수집된 데이터를 Member 객체에 담기
		//3. MemㅠerMapper.sml에서 sql문 만들고 오기
		
		//4. MemberDAO에 메소드 만들고 오기
		
		
		//5. 최종처리
		MemberDAO dao = new MemberDAO();
		int cnt=0;
		cnt = dao.deleteMember(loginMember);
			if(cnt>0) {
				System.out.println("삭제 성공");	
				//다시 main.jsp로 이동
				System.out.println("로그아웃!");
				session = request.getSession();
				session.removeAttribute("loginMember");
				response.sendRedirect("./success_pages/success_delete_member.jsp");
			}else {
				System.out.println("삭제 실패");
				response.sendRedirect("Login.jsp");
				return;
			}
			}//service 메소드 끝
	}
	}
	