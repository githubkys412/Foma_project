package com.foma_java_mvc_folder.Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.foma_java_mvc_folder.domain.FMember;
import com.foma_java_mvc_folder.domain.FMemberDAO;

public class SelectfdCon extends HttpServlet { //음식 검색 클래스
   private static final long serialVersionUID = 1L;

   protected void service(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      // 0. post방식 인코딩
      request.setCharacterEncoding("utf-8");
      // 1. 파라미터 수집
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
         response.sendRedirect("/foma_maven/template/test1_foodblog/recommendation1.jsp");
         System.out.println("빈칸 검색 결과, selectFMember 세션 삭제");
         return;
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
      
   if(selectcode.equals("none")||selectcode.equals("one")){//셀렉트코드값 일반검색 , 한개검색
      selectFMember = (ArrayList<FMember>) dao.selectFMember(fd);// selectlist로 뽑아온 결과를 형변환 시켜준다.
      System.out.println("일반검색 쿼리보내기");
   }else if(selectcode.equals("lowsalt")){//저염식 검색
		selectFMember = (ArrayList<FMember>) dao.selectFMemberlowsalt(fd);	
		System.out.println("저염식 쿼리보내기");
   }else if(selectcode.equals("lowcal")) {//저칼로리
		selectFMember = (ArrayList<FMember>) dao.selectFMemberlowcal(fd);// selectlist로 뽑아온 결과를 형변환 시켜준다.
		System.out.println("저칼로리식 쿼리보내기");
   }else if(selectcode.equals("cate")) {      
	   System.out.println("카테고리 : "+fd_category_big_name);
	   selectFMember = (ArrayList<FMember>) dao.selectFMembercate(fd);// selectlist로 뽑아온 결과를 형변환 시켜준다.
	   System.out.println("카테고리 검색쿼리 보내기");
   }
   System.out.println("검색결과 : 들어온값 :"+selectFMember.size());// 검색결과 몇개인지 확인
   //뽑아온 결과 검증코드
      /*
      for (FMember f : selectFMember) {
         
         System.out.println(f.getFd_name());
         System.out.println(f.getFd_category_big_name());
         System.out.println(f.getFd_intake_once());
      }*/

      if (selectFMember != null) {
         System.out.println("음식 검색 성공!");
         // 세션에 로그인 정보 저장, 로그인 정보가 유지되도록 세션에 저장

         // 1. 세션 객체 생성
         HttpSession session = request.getSession();
         // 2. 세션에 저장
         session.setAttribute("selectFMember", selectFMember);
         if(selectcode.equals("one")) {//받아온 검색 결과에 셀렉트코드가 one이면 상세검색창
            response.sendRedirect("/foma_maven/template/test1_foodblog/shop-single.jsp");

         }else {
         response.sendRedirect("/foma_maven/template/test1_foodblog/recommendation1.jsp");
         return;
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
         response.sendRedirect("/foma_maven/template/test1_foodblog/recommendation1.jsp");
         return;

      }

   }
   }
}

//서블릿 끝