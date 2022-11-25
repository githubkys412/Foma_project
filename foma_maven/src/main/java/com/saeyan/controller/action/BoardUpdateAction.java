package com.saeyan.controller.action;

import java.io.IOException;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.saeyan.dao.BoardDAO;
import com.saeyan.dto.BoardVO;

public class BoardUpdateAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("보드업데이트 진입");
		BoardVO bVo = new BoardVO();
		
		System.out.println("업데이트 액션 넘버 :"+request.getParameter("num") +"이름 : "+ request.getParameter("name") );
		
		bVo.setNum(Integer.parseInt(request.getParameter("num")));
		bVo.setName(request.getParameter("name"));
		bVo.setPass(request.getParameter("pass"));
		bVo.setEmail(request.getParameter("email"));
		bVo.setTitle(request.getParameter("title"));
		bVo.setContent(request.getParameter("content"));
		
		Timestamp timestamp = new Timestamp(System.currentTimeMillis());//현재 날	짜
		
		bVo.setWritedate(timestamp);
		//bVo.setReadcount(Integer.parseInt(request.getParameter("Readcount")));
		
		
		
		BoardDAO bDao = BoardDAO.getInstance();
		bDao.updateBoard(bVo);
		new BoardListAction().execute(request, response);
	}
}
