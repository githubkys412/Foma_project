package com.foma_java_mvc_folder.database;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionManager {
	
	static SqlSessionFactory sqlSessionFactory;
	   
	   static  {
	      try {
	         String resource = "com/foma_java_mvc_folder/database/mybartis_config.xml";
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