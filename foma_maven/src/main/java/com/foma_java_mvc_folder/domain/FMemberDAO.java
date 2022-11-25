package com.foma_java_mvc_folder.domain;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.foma_java_mvc_folder.database.SqlSessionManager;

public class FMemberDAO {
   
   SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
   SqlSession sqlSession = sqlSessionFactory.openSession();
   
   
   // 음식검색 리스트로 선언후 뽑아오기(일반)
   public List<FMember> selectFMember(FMember fmember) {
      List<FMember>selectFMember = null;//리스트 선언
      try {//검색결과를 리스트로 받아온다
         selectFMember = sqlSession.selectList("selectFMember", fmember);
         if (selectFMember != null) {
            sqlSession.commit();

         } else {
            sqlSession.rollback();
         }
      } finally {
         sqlSession.close();
      }
      return selectFMember;
   }
   // 음식검색 리스트로 선언후 뽑아오기(저염식)
   public List<FMember> selectFMemberlowsalt(FMember fmember) {
      List<FMember>selectFMember = null;//리스트 선언
      try {//검색결과를 리스트로 받아온다
         selectFMember = sqlSession.selectList("selectFMemberlowsalt", fmember);
         if (selectFMember != null) {
            sqlSession.commit();

         } else {
            sqlSession.rollback();
         }
      } finally {
         sqlSession.close();
      }
      return selectFMember;
   }
   //저칼로리
   public List<FMember> selectFMemberlowcal(FMember fmember) {
      List<FMember>selectFMember = null;//리스트 선언
      try {//검색결과를 리스트로 받아온다
         selectFMember = sqlSession.selectList("selectFMemberlowcal", fmember);
         if (selectFMember != null) {
            sqlSession.commit();
            
         } else {
            sqlSession.rollback();
         }
      } finally {
         sqlSession.close();
      }
      return selectFMember;
   }
//   //저탄고지
//   public List<FMember> selectFMemberlocarhifat(FMember fmember) {
//      List<FMember>selectFMember = null;//리스트 선언
//      try {//검색결과를 리스트로 받아온다
//         selectFMember = sqlSession.selectList("selectFMemberlocarhifat", fmember);
//         if (selectFMember != null) {
//            sqlSession.commit();
//            
//         } else {
//            sqlSession.rollback();
//         }
//      } finally {
//         sqlSession.close();
//      }
//      return selectFMember;
//   }
   // 고혈압
   public List<FMember> selectFMemberhbp(FMember fmember) {
	      List<FMember>selectFMember = null;//리스트 선언
	      try {//검색결과를 리스트로 받아온다
	         selectFMember = sqlSession.selectList("selectFMemberhbp", fmember);
	         if (selectFMember != null) {
	            sqlSession.commit();

	         } else {
	            sqlSession.rollback();
	         }
	      } finally {
	         sqlSession.close();
	      }
	      return selectFMember;
	   }
   // 당뇨(diabe)
   public List<FMember> selectFMemberdiabe(FMember fmember) {
	   List<FMember>selectFMember = null;//리스트 선언
	   try {//검색결과를 리스트로 받아온다
		   selectFMember = sqlSession.selectList("selectFMemberdiabe", fmember);
		   if (selectFMember != null) {
			   sqlSession.commit();

		   } else {
			   sqlSession.rollback();
		   }
	   } finally {
		   sqlSession.close();
	   }
	   return selectFMember;
   }
   //고지혈증(hyperlip)
   public List<FMember> selectFMemberhyperlip(FMember fmember) {
	   List<FMember>selectFMember = null;//리스트 선언
	   try {//검색결과를 리스트로 받아온다
		   selectFMember = sqlSession.selectList("selectFMemberhyperlip", fmember);
		   if (selectFMember != null) {
			   sqlSession.commit();

		   } else {
			   sqlSession.rollback();
		   }
	   } finally {
		   sqlSession.close();
	   }
	   return selectFMember;
   }
   //비만(obesity)
   public List<FMember> selectFMemberobesity(FMember fmember) {
	   List<FMember>selectFMember = null;//리스트 선언
	   try {//검색결과를 리스트로 받아온다
		   selectFMember = sqlSession.selectList("selectFMemberobesity", fmember);
		   if (selectFMember != null) {
			   sqlSession.commit();

		   } else {
			   sqlSession.rollback();
		   }
	   } finally {
		   sqlSession.close();
	   }
	   return selectFMember;
   }
   //심근경색(myoinfar)
   public List<FMember> selectFMembermyoinfar(FMember fmember) {
	   List<FMember>selectFMember = null;//리스트 선언
	   try {//검색결과를 리스트로 받아온다
		   selectFMember = sqlSession.selectList("selectFMembermyoinfar", fmember);
		   if (selectFMember != null) {
			   sqlSession.commit();

		   } else {
			   sqlSession.rollback();
		   }
	   } finally {
		   sqlSession.close();
	   }
	   return selectFMember;
   }
   
   //카테고리별 음식 검색결과
   public List<FMember> selectFMembercate(FMember fmember) {
      List<FMember>selectFMember = null;//리스트 선언
      try {//검색결과를 리스트로 받아온다
         selectFMember = sqlSession.selectList("selectFMembercate", fmember);
         if (selectFMember != null) {
            sqlSession.commit();
            
         } else {
            sqlSession.rollback();
         }
      } finally {
         sqlSession.close();
      }
      return selectFMember;
   }
   

}