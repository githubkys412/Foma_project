package com.saeyan.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.saeyan.dao.BoardDAO;
import com.saeyan.dto.BoardVO;
import java.sql.Timestamp;//날짜
import java.util.ArrayList;
import java.util.List;

public class BoardWriteAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		BoardVO bVo = new BoardVO();
		bVo.setName(request.getParameter("name"));
		bVo.setPass(request.getParameter("pass"));
		bVo.setEmail(request.getParameter("email"));
		bVo.setTitle(request.getParameter("title"));
		bVo.setContent(request.getParameter("content"));
		
		List<String> imagelist = new ArrayList<>();
		imagelist.add(bVo.getName());
		imagelist.add(bVo.getTitle());
		
		
		HttpSession session = request.getSession();
	        
	    session.setAttribute("imagelist", imagelist);
	      
		
		Timestamp timestamp = new Timestamp(System.currentTimeMillis());//현재 날	짜
		int good=0;
		bVo.setGood(0);
		bVo.setWritedate(timestamp);
		bVo.setReadcount(0);
		
		BoardDAO bDao = BoardDAO.getInstance();
		bDao.insertBoard(bVo);
		
		
		//new BoardListAction().execute(request, response);
		response.sendRedirect("../foma_maven/board/01_upload.jsp");
		return;
		
	}
}
