package com.saeyan.controller;

import java.io.IOException;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.saeyan.dao.BoardDAO;
import com.saeyan.dao.SubBoardDAO;
import com.saeyan.dto.GoodVO;
import com.saeyan.dto.SubBoardVO;


public class BoardGoodServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("utf-8");
		// 1. 파라미터 수집

		
		
		int num = Integer.valueOf(request.getParameter("num"));
		String username = request.getParameter("username");
		System.out.println("좋아요 서블릿 입장"+username+num);

		// 2. 수집된 데이터를 Member 객체에 담기
		
		
		SubBoardDAO bd = new SubBoardDAO();
		GoodVO vo = new GoodVO(username, num);
		int cnt = bd.selectusergood(vo);
		System.out.println("좋아요 유저 검샘결과 " +cnt );
		if(cnt==0){
			bd.insertusergood(vo);
			bd.updategood(num);
			response.sendRedirect("BoardServlet?command=board_view&num=" + num);
			return;
		}else {
			response.sendRedirect("./error_pages/error_good_once.jsp");
			//response.sendRedirect("BoardServlet?command=board_view&num=" + num);
			return;
		}
		
		
		
		
	
		
		
	}

}
