package com.smhrd.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.sqlSessionManager;

public class matchingDAO {

	SqlSessionFactory sqlSessionFactory = sqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();

	// 로그인한 신청자의 매칭 내역보기--------------------------------------------------------
	public List<MATCHING> selectMatchig(String ID) {
		List<MATCHING> MatchingList = null;
		try {
			MatchingList = sqlSession.selectList("com.smhrd.domain.matchingDAO.selectMatching", ID);
			if (MatchingList != null) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return MatchingList;
	}// 로그인한 신청자의 매칭 내역보기 끝-----------------------------------------------------
	
	// 페이징 기능 ----------------------------------------------------------------------
	public List<MATCHING> selectAllMatching(Paging paging){      
        int startNum = paging.getStartNum();
        int endNum = paging.getEndNum(); 
        List<MATCHING> MatchingList = null;
		try {
			MatchingList = sqlSession.selectOne("com.smhrd.domain.matchingDAO.selectAllMatching", paging);
			if (MatchingList != null) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return MatchingList;
	}// 페이지 기능 끝 -------------------------------------------------------------------
	
	// 테이블의 레코드 갯수 받아오기----------------------------------------------------------
	public int getAllCount() {
	    int count = 0;
		try {
			count = sqlSession.selectOne("com.smhrd.domain.matchingDAO.selectAllMatchingCount");
			if (count > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return count;
	 }

}
