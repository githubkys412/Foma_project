package com.foma_java_mvc_folder.Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.foma_java_mvc_folder.domain.Member;
import com.foma_java_mvc_folder.domain.MemberDAO;
public class findIdCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[findIDCon]");

		//0. post방식 인코딩
		request.setCharacterEncoding("utf-8");
		//아이디 세션에서 가져오기(session)
		//1. 파라미터 수집
		HttpSession session = request.getSession();
		//String findIdMember = (Member)session.getAttribute("findIdMember");
		String username = request.getParameter("find");
		System.out.println("파라미터 이름 "+username);

		if(username==null||username.equals("")||username.isBlank()||username.isEmpty()) {
			username="null";
		}
			
		//2. 수집된 데이터를 Member 객체에 담기

		//Member vo = new Member(username);

		/*
		 * String username = request.getParameter("username"); 
		 */
		//3. MemberMapper.xml에서 SQL문 만들고 오기 ㅇ

		//4. MemberDAO 가서 메소드 만들고 오기 ㅇ

		//5. MemberDAO객체 생성 메소드 호출

		//5-5 아이디 접속 검사
		System.out.println("아이디 확인중!");
		MemberDAO dao = new MemberDAO();
		List<Member> findId = dao.findIdMember(username);
		//6. 최종 처리
		if(findId != null) { //아이디 체크후 아이디가 있다면
			System.out.println("찾았다! :"+ findId);
			for(Member m: findId) {
				System.out.println(m.getUsername());
			}
			System.out.println("친구 찾기 성공!");
			System.out.println("친구 검색결과 : "+findId.size());// 검색결과 몇개인지 확인
			//아이디 체크 확인하면 친구찾기 성공
			session.setAttribute("findIdMember", findId);
			response.sendRedirect("./template/test1_foodblog/FindFriends.jsp");

		}else {
			System.out.println("친구 찾기 실패!");
			//친구 찾기 실패시 
			//findfriends.jsp로 이동
			response.sendRedirect("./template/test1_foodblog/FindFriends.jsp");
		}
		
		
		
		
	//findidcon 서블릿 끝!
	}

}
