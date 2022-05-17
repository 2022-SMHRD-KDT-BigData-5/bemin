package com.smhrd.database;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class sqlSessionManager {
   
   public static SqlSessionFactory sqlSession;

      static {
         String resource = "com/smhrd/database/mybatis-config.xml";
         Reader reader;
         try {
            reader = Resources.getResourceAsReader(resource);
            sqlSession = new SqlSessionFactoryBuilder().build(reader);
         } catch (IOException e) {
            System.out.println("sqlSession 예외처리");
            e.printStackTrace();
         }
      }
      public static SqlSessionFactory getSqlSession() {
         return sqlSession;
      }
}