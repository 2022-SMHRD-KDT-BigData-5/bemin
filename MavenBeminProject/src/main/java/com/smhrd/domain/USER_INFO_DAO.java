package com.smhrd.domain;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;


public class USER_INFO_DAO {
	SqlSessionFactory SqlSessionFactory = SqlSessionManager.getSqlSession();

	//아이디 찾기
	public USER_INFO FindID(USER_INFO u) {
		SqlSession sqlSession = SqlSessionFactory.openSession();
		
		USER_INFO u_vo =null;
		try {
			u_vo = sqlSession.selectOne("com.smhrd.domain.USER_INFO_DAO.USER_INFO",u);
		
			if(u_vo!=null) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
		
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return u_vo;
		
	}//아이디 찾기 끝
	
}
