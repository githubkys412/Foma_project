package com.saeyan.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.foma_java_mvc_folder.domain.FMember;
import com.foma_java_mvc_folder.domain.FMemberDAO;
import com.saeyan.dao.BoardDAO;
import com.saeyan.dao.SubBoardDAO;
import com.saeyan.dto.SubBoardVO;

import java.sql.Timestamp;//날짜

public class SubBoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 0. post방식 인코딩
		request.setCharacterEncoding("utf-8");
		// 1. 파라미터 수집

		System.out.println("서브보드서블렛 입장");

		int num = Integer.valueOf(request.getParameter("num"));
		String name = request.getParameter("name");
		String content = request.getParameter("content");
		String subcode = request.getParameter("subcode"); // 게시판 기능 판정코드
		
		System.out.println("받아온 게시판 코드"+subcode);
		Timestamp timestamp = new Timestamp(System.currentTimeMillis());// 현재 날짜
		// 2. 수집된 데이터를 Member 객체에 담기
		SubBoardVO sbv = new SubBoardVO(num, name, content, timestamp);

		// 4. FMemberDAO 가서 메소드 만들고 오기
		// 5. FMemberDAO객체 생성 메소드 호출
		SubBoardDAO sbd = new SubBoardDAO();
		System.out.println("댓글 작성자 :  "+name+"content : "+content);
		
		if (name == null || content == null||name.equals("")||content.equals("")||name.isEmpty()||content.isEmpty()||name.isBlank()||content.isBlank()) {// 댓글,작성자 빈칸일경우
				System.out.println("댓글 빈칸, 게시판 리턴");
			response.sendRedirect("BoardServlet?command=board_view&num=" + num);
			return;
		}else if (subcode.equals("delete")) {// 댓글 삭제
			sbd.deleteSubBoard(sbv);
		} else {// 댓글 추가
			sbd.insertSubBoard(sbv);
		}

		response.sendRedirect("BoardServlet?command=board_view&num=" + num);
		return;

	}

}
