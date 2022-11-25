package BoardListServlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.saeyan.dao.BoardDAO;
import com.saeyan.dto.BoardVO;

/**
 * Servlet implementation class GoodBoardDesc
 */
public class GoodBoardDesc extends HttpServlet { //좋아요 수를 내림차순으로 받는 클래스
	private static final long serialVersionUID = 1L;
   
    public GoodBoardDesc() {
        super();
        // TODO Auto-generated constructor stub
    }

	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");
		
		 BoardDAO dao = new BoardDAO();
	
	      
	      List<BoardVO> bdo =	 dao.selectgoodBoardsdesc();
	      
	      // 1. 세션 객체 생성
	         HttpSession session = request.getSession();
	         // 2. 세션에 저장
	         session.setAttribute("selectgoodBoardsdesc", bdo);
	      
		
		
	}
	
}
