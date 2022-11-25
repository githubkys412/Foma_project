package com.foma_java_mvc_folder.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.foma_java_mvc_folder.database.SqlSessionManager;
import com.foma_java_mvc_folder.domain.Member;

public class MemberDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	

	// 회원가입
	public int insertMember(Member member) {
		int cnt = 0;
		try {
			// Mapper-insert 태그의 id, 매개변수
			cnt = sqlSession.insert("insertMember", member);

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

	
	  //아이디 중복검색//수정중 
	public Member checkMembernopw(Member member) { 
		Member checkMembernopw = null;
		try {
			checkMembernopw  = sqlSession.selectOne("selectMembernopw", member);
			if (checkMembernopw  != null) {
				sqlSession.commit();

			} else {
				sqlSession.rollback();
			}
		} finally {
			sqlSession.close();
		}
		return checkMembernopw ;
	}
	//아이디 중복검색
	public Member checkMember(Member member) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Member checkMember = null;
		try {
			checkMember = sqlSession.selectOne("selectMembecheck", member);
			if (checkMember != null) {
				sqlSession.commit();

			} else {
				sqlSession.rollback();
			}
		} finally {
			sqlSession.close();
		}
		return checkMember;
	}
	   
	
	// 로그인
	public Member selectMember(Member member) {
		Member loginMember = null;
		try {
			loginMember = sqlSession.selectOne("selectMember", member);
			if (loginMember != null) {
				sqlSession.commit();

			} else {
				sqlSession.rollback();
			}
		} finally {
			sqlSession.close();
		}
		return loginMember;
	}

	// 회원수정
	public int updateMember(Member member) {
		int cnt=0;
		cnt=sqlSession.update("updateMember",member);;
		
		try {
		
		if(cnt>0) {
			sqlSession.commit();
		}else {
			sqlSession.rollback();
		}
		}
			finally {
			sqlSession.close();
		}//finally 끝
		//sqlSession.close();
	return cnt;
	}
	
	//아이디 삭제
	public int deleteMember(Member member) {
		int cnt=0;
		cnt=sqlSession.delete("deleteMember",member);;
		
		try {
		
		if(cnt>0) {
			sqlSession.commit();
		}else {
			sqlSession.rollback();
		}
		}
			finally {
			sqlSession.close();
		}
		return cnt;
	}
	//아이디조회(친구찾기)
		public List<Member> findIdMember(String username) {
			SqlSession sqlSession = sqlSessionFactory.openSession();
			List<Member> findIdMember = null;
			System.out.println("파인드멤버 받아온 이름"+username);
			try {
				findIdMember = sqlSession.selectList("findIdMember", username);
				System.out.println(findIdMember);
				if (findIdMember != null) {
					sqlSession.commit();

				} else {
					sqlSession.rollback();
				}
			} finally {
				sqlSession.close();
			}
			return findIdMember;
	}
}
