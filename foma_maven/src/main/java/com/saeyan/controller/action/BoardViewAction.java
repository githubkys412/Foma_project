package com.saeyan.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.saeyan.dao.BoardDAO;
import com.saeyan.dao.SubBoardDAO;
import com.saeyan.dto.BoardVO;
import com.saeyan.dto.SubBoardVO;
public class BoardViewAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "/board/boardView.jsp";
		String num = request.getParameter("num");
		System.out.println("보드 뷰 액션 num 파라미터 값   : "+num);
		BoardDAO bDao = BoardDAO.getInstance();
		
		bDao.updateReadCount(num);
	//	BoardVO bVo = bDao.selectOneBoardByNum(num);
	
		
List<BoardVO> selectOneBoardByNum = bDao.selectOneBoardByNum(num);

String imgname= selectOneBoardByNum.get(0).getName();
String imgtitle = selectOneBoardByNum.get(0).getTitle();

SubBoardDAO sdao = new SubBoardDAO();



List<SubBoardVO> selectAllSubBoards = bDao.selectAllSubBoards(num);//리플
		
        HttpSession session = request.getSession();
      
        session.setAttribute("selectOneBoardByNum", selectOneBoardByNum);
        session.setAttribute("selectAllSubBoards", selectAllSubBoards);
        
		//request.setAttribute("board", bVo);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
