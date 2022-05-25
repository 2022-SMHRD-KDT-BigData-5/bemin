package com.smhrd.domain;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.sqlSessionManager;

public class tierDAO {

	SqlSessionFactory sqlSessionFactory = sqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	// 티어넣기-------------------------------------------------------------
	public int tierInsert(TIER t_vo){
		int cnt=0;
		try {
			cnt=sqlSession.insert("com.smhrd.domain.tierDAO.tierInsert",t_vo);
			if(cnt>0) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return cnt;
	}//티어넣기 끝-------------------------------------------------------------


	
}
