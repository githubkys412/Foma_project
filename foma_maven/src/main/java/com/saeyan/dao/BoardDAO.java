package com.saeyan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;
import org.apache.catalina.connector.Response;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;



import com.foma_java_mvc_folder.database.SqlSessionManager;
import com.foma_java_mvc_folder.domain.Member;
import com.foma_java_mvc_folder.domain.MemberDAO;
import com.saeyan.dto.BoardVO;
import com.saeyan.dto.SubBoardVO;

public class BoardDAO {//싱글톤 패턴으로 이루어져 잇음
	
	
	public BoardDAO() {
	}

	private static BoardDAO instance = new BoardDAO();

	public static BoardDAO getInstance() {
		return instance;
	}
	
	
	   
	public List<BoardVO> selectBoardsbyname(String username) {  //게시판 자기 이름으로 검색
		//String sql = "select * from board order by num desc";
		List<BoardVO> list = new ArrayList<BoardVO>();
		list=null;
		BoardVO vo= new BoardVO();
		vo.setName(username);
		   SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
		   SqlSession sqlSession = sqlSessionFactory.openSession();
		   
		  try {//검색결과를 리스트로 받아온다
			  list = sqlSession.selectList("selectBoardsbyname", vo);
			
			  if (list != null) {
				     sqlSession.commit();

		         } else {
		            sqlSession.rollback();
		         }
		      } finally {
		         sqlSession.close();
		      }
	
		  return list;
	   }
	
	
	public List<BoardVO> selectgoodBoardsdesc() {  //게시판 모든 글 검색
		//String sql = "select * from board order by num desc";
		List<BoardVO> list = new ArrayList<BoardVO>();

		   SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
		   SqlSession sqlSession = sqlSessionFactory.openSession();
		   
		  try {//검색결과를 리스트로 받아온다
			  list = sqlSession.selectList("selectgoodBoardsdesc");
			
			  if (list != null) {
				  System.out.println("가져온 좋아요 리스트 작성자 "+list.get(0).getName());
		            sqlSession.commit();

		         } else {
		            sqlSession.rollback();
		         }
		      } finally {
		         sqlSession.close();
		      }
	
		      return list;
		   }
	
	
	

	public List<BoardVO> selectAllBoards() {  //게시판 모든 글 검색
		//String sql = "select * from board order by num desc";
		List<BoardVO> list = new ArrayList<BoardVO>();

		   SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
		   SqlSession sqlSession = sqlSessionFactory.openSession();
		   
		  try {//검색결과를 리스트로 받아온다
			  list = sqlSession.selectList("selectAllBoards");
			
			  if (list != null) {
				  System.out.println("가져온 리스트 작성자 "+list.get(0).getName());
		            sqlSession.commit();

		         } else {
		            sqlSession.rollback();
		         }
		      } finally {
		         sqlSession.close();
		      }
	
		      return list;
		   }
	
	public List<SubBoardVO> selectAllSubBoards(String num2) {  //리플 글 검색
		//String sql = "select * from board order by num desc";
		List<SubBoardVO> list = new ArrayList<SubBoardVO>();


		   SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
		   SqlSession sqlSession = sqlSessionFactory.openSession();
		   
		  int num=Integer.parseInt(num2);
		  try {//검색결과를 리스트로 받아온다
			  list = sqlSession.selectList("selectAllSubBoards",num);
			System.out.println(list);
			  if (list != null && !list.isEmpty()) { //빈배열 체크
				  System.out.println("가져온 리플번호 :"+num+" 작성자 : "+list.get(0).getName() +"컨텐츠 : "+list.get(0).getContent());
					sqlSession.commit();

				 } else {
					sqlSession.rollback();
				 }
			  } finally {
				 sqlSession.close();
			  }

		 
			  return list;
		   }
	
	

	public void insertBoard(BoardVO bVo) { // 게시판 작성
//		String sql = "insert into board("
//				+ "num, name, email, pass, title, content) "
//				+ "values(board_seq.nextval, ?, ?, ?, ?, ?)";
		System.out.println("게시판 받아온 이름	 :"+bVo.getName()+"받아온 날짜"+bVo.getWritedate());
		SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
		   SqlSession sqlSession = sqlSessionFactory.openSession();
		int cnt = 0;
		try {
			// Mapper-insert 태그의 id, 매개변수
			cnt = sqlSession.insert("insertBoard", bVo);

			if (cnt > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}

		} finally {
			sqlSession.close();
		}
		
	}
	

	public void updateReadCount(String num2) {//게시판 읽은수자 +1
		  SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
		   SqlSession sqlSession = sqlSessionFactory.openSession();
		   int cnt =0;
		  try {//검색결과를 리스트로 받아온다
			  int num = Integer.parseInt(num2);
			  System.out.println("업데이트리드카운터 넘버 : "+num2);
			cnt = sqlSession.update("updateReadCount",num);
			
			  if (cnt >0) {
				  
		            sqlSession.commit();

		         } else {
		            sqlSession.rollback();
		         }
		      } finally {
		         sqlSession.close();
		      }
	
		    
		   }
	
	
	// 게시판 글 상세 내용 보기 :글번호로 찾아온다. : 실패 null,
		public List<BoardVO> selectOneBoardByNum(String num2) {  //게시판 하나 검색
		System.out.println("셀렉트원보드바이넘 진입");
			List<BoardVO> list = new ArrayList<BoardVO>();

			   SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
			   SqlSession sqlSession = sqlSessionFactory.openSession();
			   
			  int num=Integer.parseInt(num2);
			  try {//검색결과를 리스트로 받아온다
				  list = sqlSession.selectList("selectOneBoardByNum",num);
				
				  if (list != null) {
					  System.out.println("가져온 리스트 하나 작성자 "+list.get(0).getName());
						sqlSession.commit();

					 } else {
						sqlSession.rollback();
					 }
				  } finally {
					 sqlSession.close();
				  }

				  return list;
			   }
		
		
		public void deleteBoard(int num2) {
			//String sql = "delete board where num=?";
			
			SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
			   SqlSession sqlSession = sqlSessionFactory.openSession();
			   
			  // int num=Integer.parseInt(num2);
			   int num=num2;
			   try {//검색결과를 리스트로 받아온다
					  int cnt =sqlSession.delete("deleteBoard",num);
					
					  if (cnt >0) {
						
							sqlSession.commit();

						 } else {
							sqlSession.rollback();
						 }
					  } finally {
						 sqlSession.close();
					  }

					  
				   }
		
		public void updateBoard(BoardVO bVo) {
			//String sql = "update board set name=?, email=?, pass=?, "
			//		+ "title=?, content=? where num=?";
			
			System.out.println("업데이트 게시판 받아온 이름	 :"+bVo.getName()+"받아온 날짜"+bVo.getWritedate());
			SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
			   SqlSession sqlSession = sqlSessionFactory.openSession();
			   
			  
			   
			int cnt = 0;
			try {
				// Mapper-insert 태그의 id, 매개변수
				cnt = sqlSession.update("updateBoard",bVo);

				if (cnt > 0) {
					sqlSession.commit();
				} else {
					sqlSession.rollback();
				}

			} finally {
				sqlSession.close();
			}
		}


		
		
/*  원본소스들
 * 
		public BoardVO checkPassWord(String pass, String num) {
			String sql = "select * from board where pass=? and num=?";
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			BoardVO bVo = null;
			try {
				conn = DBManager.getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, pass);
				pstmt.setString(2, num);
				rs = pstmt.executeQuery();
				if (rs.next()) {
					bVo = new BoardVO();
					bVo.setNum(rs.getInt("num"));
					bVo.setName(rs.getString("name"));
					bVo.setEmail(rs.getString("email"));
					bVo.setPass(rs.getString("pass"));
					bVo.setTitle(rs.getString("title"));
					bVo.setContent(rs.getString("content"));
					bVo.setReadcount(rs.getInt("readcount"));
					bVo.setWritedate(rs.getTimestamp("writedate"));
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return bVo;
		}
		*/
		
		
		
		/*
	public BoardVO selectOneBoardByNum(String num) {
		String sql = "select * from board where num = ?";
		BoardVO bVo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				bVo = new BoardVO();
				bVo.setNum(rs.getInt("num"));
				bVo.setName(rs.getString("name"));
				bVo.setPass(rs.getString("pass"));
				bVo.setEmail(rs.getString("email"));
				bVo.setTitle(rs.getString("title"));
				bVo.setContent(rs.getString("content"));
				bVo.setWritedate(rs.getTimestamp("writedate"));
				bVo.setReadcount(rs.getInt("readcount"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return bVo;
	}
	*/
	
/*
	public void updateBoard(BoardVO bVo) {
		String sql = "update board set name=?, email=?, pass=?, "
				+ "title=?, content=? where num=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bVo.getName());
			pstmt.setString(2, bVo.getEmail());
			pstmt.setString(3, bVo.getPass());
			pstmt.setString(4, bVo.getTitle());
			pstmt.setString(5, bVo.getContent());
			pstmt.setInt(6, bVo.getNum());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	public BoardVO checkPassWord(String pass, String num) {
		String sql = "select * from board where pass=? and num=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		BoardVO bVo = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pass);
			pstmt.setString(2, num);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				bVo = new BoardVO();
				bVo.setNum(rs.getInt("num"));
				bVo.setName(rs.getString("name"));
				bVo.setEmail(rs.getString("email"));
				bVo.setPass(rs.getString("pass"));
				bVo.setTitle(rs.getString("title"));
				bVo.setContent(rs.getString("content"));
				bVo.setReadcount(rs.getInt("readcount"));
				bVo.setWritedate(rs.getTimestamp("writedate"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return bVo;
	}

	public void deleteBoard(String num) {
		String sql = "delete board where num=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	*/
	
}

