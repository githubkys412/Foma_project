package com.foma_java_mvc_folder.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.foma_java_mvc_folder.domain.Member;
import com.foma_java_mvc_folder.domain.MemberDAO;


public class JoinCon extends HttpServlet {


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("[JoinCon]");
		//0. post방식 인코딩
		request.setCharacterEncoding("utf-8");
		//1파라미터 수집
		String username = request.getParameter("username");
		String userpw= request.getParameter("userpw");
		String useremail = request.getParameter("useremail");
		
		double userage =  Double.parseDouble(request.getParameter("userage"));
		double userheight =  Double.parseDouble(request.getParameter("userheight"));
		double userweight = Double.parseDouble(request.getParameter("userweight"));
		
		String userdiabetes= "정상"; //당뇨, 고혈합 기본적으로 정상이며, 체크박스 체크하면 변경
		if(request.getParameter("userdiabetes")!=null){
		userdiabetes = "당뇨";
		}
		String userhbp ="정상";
				if( request.getParameter("userhbp")!=null) {
					userhbp = "고혈압";
				}
		
		double userbmi= userweight/((userheight/100)*(userheight/100));
		//지병 9가지 추가: 회원정보 수정에 담아질 것(회원가입x)
		String userhyperlip = ""; //고지혈증
		String userobesity = ""; //비만
		String userheartdis = ""; //심장병
		String userstroke = ""; //뇌졸중
		String userpuldis = ""; //폐질환
		String userliverdis = ""; //간질환
		String userosteo = ""; //골다공증
		String userarthritis = ""; //관절염
		String usermyoinfar = ""; //심근경색
		
		
		
		//2수집된 데이터를  객체에 담기(지병 9가지 추가!)
		Member vo = new Member(username, userpw, useremail, userage, userheight, userweight, userdiabetes, userhbp,userbmi,
					userhyperlip,userobesity,userheartdis,userstroke,userpuldis,userliverdis,userosteo,userarthritis,usermyoinfar);

		
		
        //1-1 아이디 중복 검색
		
		//4. MemberDAO 가서 메소드 만들고 오기
		
				//5. MemberDAO객체 생성 메소드 호출

		MemberDAO dao2 = new MemberDAO();
		Member checkMembernopw = dao2.checkMembernopw(vo);
		
				
				//6. 명령후 처리
		
			//main.jsp로 이동
				
		//페이지 이동
		
				
		
		//3. MemberMapper.Xml SQL문 만들고 오기
		
		//4. MemberDAO 가서 메소드 만들고 오기
		 
		//5.MemberDAO 객채 생성, 메소드 호출 
		if(checkMembernopw == null) {//아이디 체크후 아이디가 없다면
			System.out.println("아이디 체크 성공!");
		MemberDAO dao = new MemberDAO();
		int cnt = dao.insertMember(vo);
		
		//6 명령 후 처리
		if(cnt>0) {
			System.out.println("회원가입 성공");
			//회원가입정보를 유지한채로 
			//joinSucess로 이동
			//정보를 유지할 필요가 없으면 sendRedirect 형태로 이동
			//정보를 유지해야한다면 forward 방식 이동
			//--->request영역에 정보를 저장
//			response.sendRedirect("joinSuccess.jsp");
			RequestDispatcher rd= request.getRequestDispatcher("./success_pages/success_join.jsp");
			request.setAttribute("joinInfo", vo);
			rd.forward(request, response);
		}else {
			System.out.println("회원가입 실패");
			response.sendRedirect("main.jsp");
			return;
		}
		}else {
			System.out.println("아이디 중복 실패!");
			
			response.sendRedirect("./error_pages/error_insert_idcheck.jsp");
			return;
	}//서비스 메소드 끝
	}
}
