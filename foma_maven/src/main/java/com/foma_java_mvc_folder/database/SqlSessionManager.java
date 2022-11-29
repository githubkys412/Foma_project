package com.foma_java_mvc_folder.database;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionManager { //세션팩토리. db연결 클래스
	
	static SqlSessionFactory sqlSessionFactory;
	   
	   static  {
	      try {
	         String resource = "com/foma_java_mvc_folder/database/mybartis_config.xml"; //마이파티스 설정
	         InputStream inputStream = Resources.getResourceAsStream(resource);
	         sqlSessionFactory =
	           new SqlSessionFactoryBuilder().build(inputStream);
	      }catch(Exception e){
	         e.printStackTrace();
	      }
	   }//static 끝
	   
	   // DAO에서 SqlSessionFactory 사용하기 위한 메소드 만들기
	   public static SqlSessionFactory getSqlSession() {
	      
	      return sqlSessionFactory;
	   }
}