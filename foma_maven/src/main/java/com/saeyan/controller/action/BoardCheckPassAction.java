package com.saeyan.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.saeyan.dao.BoardDAO;
import com.saeyan.dto.BoardVO;

public class BoardCheckPassAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = null;
		String num = request.getParameter("num");
		String pass = request.getParameter("pass");
		BoardDAO bDao = BoardDAO.getInstance(); //싱글톤 기반 인스턴스 취득
		
		List<BoardVO> bd = bDao.selectOneBoardByNum(num); //번호로 게시글 하나 뽑아오기
		
		HttpSession session = request.getSession();
		if (bd.get(0).getPass().equals(pass)) { // 성공
			url = "/board/checkSuccess.jsp";
			
		} else {// 실패
			url = "/board/boardCheckPass.jsp";
			session.setAttribute("message", "비밀번호가 틀렸습니다.");
			request.setAttribute("message", "비밀번호가 틀렸습니다.");
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
