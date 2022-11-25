package com.saeyan.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

import com.saeyan.dao.BoardDAO;
import com.saeyan.dto.BoardVO;

public class BoardDeleteAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		 HttpSession session = request.getSession();
		 List<BoardVO> bd = (List<BoardVO>)session.getAttribute("selectOneBoardByNum");
		int num2 = bd.get(0).getNum();
		String num=request.getParameter("num2");
		BoardDAO bDao=BoardDAO.getInstance();
		
		System.out.println("보드딜리트 액션  num2:"+num2);
	
		
		
		bDao.deleteBoard(num2);
		new BoardListAction().execute(request, response);
	}
}
