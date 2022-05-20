package com.smhrd.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.sqlSessionManager;

public class PLACE_INFODAO {
	
	SqlSessionFactory sqlSessionFactory = sqlSessionManager.getSqlSession();

	//모든 경기장 정보 불러오기(경기장 예약메인페이지)
	public List<PLACE_INFO> PlaceAll() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<PLACE_INFO> msg_vo = null;
		try {
			msg_vo = sqlSession.selectList("com.smhrd.domain.PLACE_INFODAO.selectPLACE");

			if (msg_vo != null) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return msg_vo;
	}//모든 경기장 정보 불러오기( 경기장 예약메인페이지) -끝-
	
	
	
	
	
	
	
}
