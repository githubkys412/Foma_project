package com.foma_java_mvc_folder.Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.foma_java_mvc_folder.domain.FMember;
import com.foma_java_mvc_folder.domain.FMemberDAO;

public class SelectfdCon2 extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// 0. post방식 인코딩
	      request.setCharacterEncoding("utf-8");
	      // 1. 파라미터 수집
	      // 지병 가져오기
//	      String[] ill = request.getParameterValues("ill");
	      
//	      for(int i=0;i<ill.length;i++){
//	    	 System.out.println("입력된 값:"+ ill[i]);
//	      }
	      
	      String fd_name="*";
	      String fd_category_big_name ="";
	      String selectcode="";
	      selectcode = request.getParameter("selectcode");//입력된 셀렉트코드값 대입
	      System.out.println("입력된 셀렉트코드 값 :"+ selectcode);
	      
	      if(request.getParameter("fd_category_big_name")!=null) {//카테고리값이 존재할때
	    	  fd_category_big_name = request.getParameter("fd_category_big_name");//카테고리값 대입
	      }
	      fd_name = request.getParameter("fd_name");//입력된 검색어 대입
	      if(fd_name.equals("") ) {//검색창에 빈칸이 입력될경우, 
	         HttpSession session = request.getSession();
	         session.removeAttribute("selectFMember");//세션값 삭제
	         //다시 검색페이지 이동
	         response.sendRedirect("/foma_maven/template/test1_foodblog/recommendation2.jsp");
	         System.out.println("빈칸 검색 결과, selectFMember 세션 삭제");
	      }else {

	      // 2. 수집된 데이터를 Member 객체에 담기

	    	  FMember fd = new FMember(fd_name,fd_category_big_name);

	    	  if(fd_category_big_name.equals("")) {//카테고리 검색값이 빈칸이면
	    		  fd = new FMember(fd_name);
	    	  }
	    	  // 4. FMemberDAO 가서 메소드 만들고 오기
	    	  // 5. FMemberDAO객체 생성 메소드 호출
	    	  FMemberDAO dao = new FMemberDAO();

	    	  ArrayList<FMember> selectFMember =null;

	    	  if(selectcode.equals("hbp")||selectcode.equals("one")) { //고혈압
	    		  selectFMember = (ArrayList<FMember>) dao.selectFMemberhbp(fd);// selectlist로 뽑아온 결과를 형변환 시켜준다.
	    		  System.out.println("고혈압 쿼리보내기");
	    	  }else if(selectcode.equals("diabe")){ //당뇨 
	    		  selectFMember = (ArrayList<FMember>) dao.selectFMemberdiabe(fd);   
	    		  System.out.println("당뇨 쿼리보내기");
	    	  }else if(selectcode.equals("hyperlip")) { //고지혈증 
	    		  selectFMember = (ArrayList<FMember>) dao.selectFMemberhyperlip(fd);// selectlist로 뽑아온 결과를 형변환 시켜준다.
	    		  System.out.println("고지혈증 쿼리보내기");
	    	  }else if(selectcode.equals("obesity")) { //비만
	    		  selectFMember = (ArrayList<FMember>) dao.selectFMemberobesity(fd);// selectlist로 뽑아온 결과를 형변환 시켜준다.
	    		  System.out.println("비만 쿼리보내기");
	    	  }else if(selectcode.equals("myoinfar")) { //심근경색
	    		  selectFMember = (ArrayList<FMember>) dao.selectFMembermyoinfar(fd);// selectlist로 뽑아온 결과를 형변환 시켜준다.
	    		  System.out.println("심근경색 쿼리보내기");
	    	  }
	    	  System.out.println("검색된 결과 :"+selectFMember.size());// 검색결과 몇개인지 확인

	    	  if (selectFMember != null) {
		         System.out.println("음식 검색 성공!");
		         // 세션에 로그인 정보 저장, 로그인 정보가 유지되도록 세션에 저장
	
		         // 1. 세션 객체 생성
		         HttpSession session = request.getSession();
		         // 2. 세션에 저장
		         session.setAttribute("selectFMember", selectFMember);
		         System.out.println("selectcode가 무엇일까요?"+selectcode);
		         if(selectcode.equals("one")) {
		        	 response.sendRedirect("/foma_maven/template/test1_foodblog/shop-single.jsp");
		         }else {
		        	 response.sendRedirect("/foma_maven/template/test1_foodblog/recommendation2.jsp");
		         }
	         
	//검증코드
	         /* 
	           selectFMember = (ArrayList<FMember>)session.getAttribute("selectFMember");
	           for (FMember f : selectFMember) { System.out.println(f.getFd_name());
	           System.out.println(f.getFd_category_big_name());
	           System.out.println(f.getFd_category_small_name()); }
	          */
	         
	         // 인덱스로이동
	      } else {
	         System.out.println("음식검색 실패 실패!");
	         response.sendRedirect("/foma_maven/template/test1_foodblog/recommendation2.jsp");
	         return;
	      }

	   }
	   }
	}

	//서블릿 끝