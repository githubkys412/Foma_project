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

import oracle.net.ns.SessionAtts;

public class UpdateCon extends HttpServlet { //회원정보 수정. jsp수정시 가입했던 정보 기존에 드러나게
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//0 post방식 인코딩
		request.setCharacterEncoding("utf-8");
		
		//파라미터 수집
		//form태그에는 기타 정보 담아서 보냄
		//아이디 비번 --> session에서 가져오기
		HttpSession session = request.getSession();
		Member loginMember = (Member)session.getAttribute("loginMember");		
		String username = loginMember.getUsername();
		
		
		//form태그 파라미터 가져오기
		String userpw = request.getParameter("userpw");
		String useremail = request.getParameter("useremail");		
		double userage =  Double.parseDouble(request.getParameter("userage"));
		double userheight =  Double.parseDouble(request.getParameter("userheight"));
		double userweight = Double.parseDouble(request.getParameter("userweight"));
		
		String userdiabetes= "정상"; //당뇨, 고혈압 기본적으로 not이며, 체크박스 체크하면 on으로 변경
		if(request.getParameter("userdiabetes")!=null){
		userdiabetes = "당뇨";
		}
		
		String userhbp ="정상"; //고혈압
				if( request.getParameter("userhbp")!=null) {
					userhbp = "고혈압";
				}
		double userbmi= userweight/((userheight/100)*(userheight/100));
		
		String userhyperlip = ""; //고지혈증
		if( request.getParameter("userhyperlip")!=null) {
			userhyperlip = "고지혈증";	
			}
		String userobesity = ""; //비만
		if( request.getParameter("userobesity")!=null) {
			userobesity = "비만";	
			}
		String userheartdis =""; //심장병
		if( request.getParameter("userheartdis")!=null) {
			userheartdis = "심장병";	
			}
		String userstroke =""; //뇌졸중
		if( request.getParameter("userstroke")!=null) {
			userstroke = "뇌졸중";	
			}
		String userpuldis =""; //폐질환
		if( request.getParameter("userpuldis")!=null) {
			userpuldis = "폐질환";	
			}
		String userliverdis =""; //간질환
		if( request.getParameter("userliverdis")!=null) {
			userliverdis = "간질환";	
			}
		String userosteo =""; //골다공증
		if( request.getParameter("userosteo")!=null) {
			userosteo = "골다공증";	
			}
		String userarthritis =""; //관절염
		if( request.getParameter("userarthritis")!=null) {
			userarthritis = "관절염";	
			}
		String usermyoinfar =""; //심근경색
		if( request.getParameter("usermyoinfar")!=null) {
			usermyoinfar = "심근경색";	
			}
		
	
	
	
		
		
		//2수집된 데이터를 Member 객체에 담기
		Member vo = new Member(username, userpw, useremail, userage, userheight, userweight, userdiabetes, userhbp,userbmi,
				userhyperlip,userobesity,userheartdis,userstroke,userpuldis,userliverdis,userosteo,userarthritis,usermyoinfar);
		//3. MemㅠerMapper.sml에서 sql문 만들고 오기
		
		//4. MemberDAO에 메소드 만들고 오기
		
		
		//5. 최종처리
		MemberDAO dao = new MemberDAO();
		int updateMember = dao.updateMember(vo);
			if(updateMember>0) {
				System.out.println("회원정보 수정 성공");
				
				session.setAttribute("loginMember", loginMember);
				response.sendRedirect("./success_pages/success_update.jsp");
			}else {
				System.out.println("회원정보 수정 실패");
				response.sendRedirect("main.jsp");
				return;
			}
			}//service 메소드 끝
		
	}