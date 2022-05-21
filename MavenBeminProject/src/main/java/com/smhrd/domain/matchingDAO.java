package com.smhrd.domain;

import java.math.BigDecimal;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.sqlSessionManager;

public class matchingDAO<BoardReply> {

	SqlSessionFactory sqlSessionFactory = sqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();

	// 게시판 매칭 내역보기--------------------------------------------------------
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
	}// 게시판 매칭 내역보기 끝-----------------------------------------------------
	
	// 취소 조건------------------------------------------------------------------------
	public MATCHING FindMatching(MATCHING m) {

		MATCHING m_vo = null;
		try {
			m_vo = sqlSession.selectOne("com.smhrd.domain.matchingDAO.selectMatchingView", m);

			if (m_vo != null) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return m_vo;

	}// 취소 조건----------------------------------------------------------------------
	
	public MATCHING MatchingInfo(MATCHING match) {
		MATCHING matching = null;
		try {
			matching = sqlSession.selectOne("com.smhrd.domain.matchingDAO.selectMatchingInfo", match);
			if (matching != null) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return matching;
	} // 매치들 끝 --------------------------------------------------------------------
	
	//  매칭게시판에서 내글 삭제 ----------------------------------------------
	public int deleteMatchingIdex(int matNum) {
		int cnt = 0;
		try {
			cnt = sqlSession.delete("com.smhrd.domain.matchingDAO.deleteMatchingIdex", matNum);
			if(cnt > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return cnt;
	} //  매칭게시판에서 내글 삭제------------------------------------------
	
}
