package com.saeyan.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSessionFactory;

import com.saeyan.dao.BoardDAO;
import com.saeyan.dto.BoardVO;

public class BoardUpdateFormAction implements Action { //게시글 업데이트 클래스
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		 HttpSession session = request.getSession();
		 List<BoardVO> bd = (List<BoardVO>)session.getAttribute("selectOneBoardByNum"); //게시글 하나
		
		int num = bd.get(0).getNum();
		String url = "/board/boardUpdate.jsp";
		//String num = request.getParameter("num");
		System.out.println("보드업데이트 폼 진입 넘값 : "+num);
		BoardDAO bDao = BoardDAO.getInstance();
		//bDao.updateReadCount(num);
		
		//BoardVO bVo = bDao.selectOneBoardByNum(num);
		
		String num2 = String.valueOf(num);
		System.out.println(num2);
List<BoardVO> selectOneBoardByNum = bDao.selectOneBoardByNum(num2);
		
       
        session.setAttribute("selectOneBoardByNum", selectOneBoardByNum);
		
		//request.setAttribute("board", bVo);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
