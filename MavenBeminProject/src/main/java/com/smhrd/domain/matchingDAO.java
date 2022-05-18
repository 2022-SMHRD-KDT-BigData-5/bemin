package com.smhrd.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.sqlSessionManager;

public class matchingDAO {
	
	SqlSessionFactory sqlSessionFactory = sqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	// 로그인한 신청자의 매칭 내역보기---------------------------------------------------------------
	public List<MATCHING> selectMatchig(String ID){
		List<MATCHING> MatchingList = null;
		try {
			MatchingList = sqlSession.selectList("com.smhrd.domain.MATCHING.selectMatching", ID);
			if(MatchingList != null) {
				sqlSession.commit();
		}else {
			sqlSession.rollback();
		}
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		sqlSession.close();
	} 
	return MatchingList;
	}// 로그인한 신청자의 매칭 내역보기 끝--------------------------------------------------------------
	

}
