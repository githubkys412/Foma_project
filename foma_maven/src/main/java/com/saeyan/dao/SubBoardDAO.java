package com.saeyan.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.foma_java_mvc_folder.database.SqlSessionManager;
import com.foma_java_mvc_folder.domain.FMember;
import com.foma_java_mvc_folder.domain.Member;
import com.saeyan.dto.GoodVO;
import com.saeyan.dto.SubBoardVO;


public class SubBoardDAO {
	public void insertSubBoard(SubBoardVO bVo) { // 게시판 작성
//		String sql = "insert into board("
//				+ "num, name, email, pass, title, content) "
//				+ "values(board_seq.nextval, ?, ?, ?, ?, ?)";
		System.out.println("게시판 받아온 이름	 :"+bVo.getName()+"받아온 날짜"+bVo.getWritedate());
		SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
		   SqlSession sqlSession = sqlSessionFactory.openSession();
		int cnt = 0;
		try {
			// Mapper-insert 태그의 id, 매개변수
			cnt = sqlSession.insert("insertSubBoard", bVo);

			if (cnt > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}

		} finally {
			sqlSession.close();
		}
	}
	
	
	
	public void deleteSubBoard(SubBoardVO bVo) { // 게시판 작성
//		String sql = "insert into board("
//				+ "num, name, email, pass, title, content) "
//				+ "values(board_seq.nextval, ?, ?, ?, ?, ?)";
		System.out.println("댓글삭제 받아온 이름	 :"+bVo.getName()+"받아온 날짜"+bVo.getWritedate());
		SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
		   SqlSession sqlSession = sqlSessionFactory.openSession();
		int cnt = 0;
		try {
			// Mapper-insert 태그의 id, 매개변수
			cnt = sqlSession.delete("deleteSubBoard", bVo);

			if (cnt > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}

		} finally {
			sqlSession.close();
		}
	}
	public void updategood(int num) {//게시판 좋아요 +1 업데이트시
		  SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
		   SqlSession sqlSession = sqlSessionFactory.openSession();
		   int cnt =0;
		  try {//검색결과를 리스트로 받아온다
			 
			  System.out.println("좋아요 dao 진입 : ");
			cnt = sqlSession.update("updategood",num);
			
			  if (cnt >0) {
				  
		            sqlSession.commit();

		         } else {
		            sqlSession.rollback();
		         }
		      } finally {
		         sqlSession.close();
		      }
	
		    
		   }
	public void insertgood(int num) {//게시판 좋아요 +1
		  SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
		   SqlSession sqlSession = sqlSessionFactory.openSession();
		   int cnt =0;
		  try {//검색결과를 리스트로 받아온다
			 
			  System.out.println("좋아요 dao 진입 : ");
			cnt = sqlSession.update("updategood",num);
			
			  if (cnt >0) {
				  
		            sqlSession.commit();

		         } else {
		            sqlSession.rollback();
		         }
		      } finally {
		         sqlSession.close();
		      }
	
		    
		   }
	
	
	
	
	
	public int selectusergood(GoodVO vo) { //게시판 좋아요 유저 검색
		int cnt = 0;
		 SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
		   SqlSession sqlSession = sqlSessionFactory.openSession();
		try {			
			// Mapper-insert 태그의 id, 매개변수
			System.out.println("게시판 조아요 검색 username num "+vo.getUsername()+ " "+vo.getNum());
			
			
			if(sqlSession.selectOne("selectusergood", vo)!=null) {
			cnt = sqlSession.selectOne("selectusergood", vo);
			}
			if (cnt > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}

		} finally {
			sqlSession.close();
		}
		return cnt;

	}
	
	public int insertusergood(GoodVO vo) { //게시판 좋아요 유저 추가
		int cnt = 0;
		 SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
		   SqlSession sqlSession = sqlSessionFactory.openSession();
		   System.out.println("게시판 조아요 유저 추가 username num"+vo.getUsername()+ " "+vo.getNum());
		try {			
			// Mapper-insert 태그의 id, 매개변수
			cnt = sqlSession.insert("insertsubgood", vo);

			if (cnt > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}

		} finally {
			sqlSession.close();
		}
		return cnt;

	}
	

	
}
