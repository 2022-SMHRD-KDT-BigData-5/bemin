package com.smhrd.domain;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.sqlSessionManager;

public class MatchingListDAO {

	SqlSessionFactory sqlSessionFactory = sqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	// 아이디 찾기
	public MATCHING_LIST ListID(MATCHING_LIST list_u) {

		MATCHING_LIST liu_vo = null;
		try {
			liu_vo = sqlSession.selectOne("com.smhrd.domain.MatchingListDAO.selectListID", list_u);

			if (liu_vo != null) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return liu_vo;

	}// 아이디 찾기 끝
	
	// 매칭리스트에서 본인 삭제 ----------------------------------------------------------
	public int deleteMatchingList(String delmatid, int delnum) {
		int cnt = 0;
		Map map = new HashMap();
		map.put("ID", delmatid);
		map.put("MAT_NO", delnum);
	
		try {
			cnt = sqlSession.delete("com.smhrd.domain.MatchingListDAO.deleteMatchingList",map);
			if(cnt > 0) {
				System.out.println("커밋");
				sqlSession.commit();
			} else {
				System.out.println("롤백");
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return cnt;
	} // 매칭리스트에서 본인 삭제---------------------------------------------------------
	
	// 매칭리스트 내역보기--------------------------------------------------------------
	public List<MATCHING_LIST> selectMatching(String listId) {
		List<MATCHING_LIST> Matching_List = null;
		try {
			Matching_List = sqlSession.selectList("com.smhrd.domain.MatchingListDAO.selectMatchingList", listId);
			if (Matching_List != null) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return Matching_List;
	}// 매칭리스트 내역보기 끝------------------------------------------------------------
	
	// 매칭리스트 내역보기--------------------------------------------------------------
	public List<String> ViewMatching(BigDecimal matlistnum) {
		List<String> Matching_List = null;
		try {
			Matching_List = sqlSession.selectList("com.smhrd.domain.MatchingListDAO.ViewMatchingList", matlistnum);
			if (Matching_List != null) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return Matching_List;
	}// 매칭리스트 내역보기 끝------------------------------------------------------------

	// 매칭리스트에서 본인 삭제 ----------------------------------------------------------
	public int nameMatchingList(String delmatid, int delnum) {
		int cnt = 0;
		
		Map map = new HashMap();
		map.put("ID", delmatid);
		map.put("MAT_NO", delnum);
	
		try {
			cnt = sqlSession.selectOne("com.smhrd.domain.MatchingListDAO.nameMatchingList", map);
			if(cnt > 0) {
				System.out.println("커밋");
				sqlSession.commit();
			} else {
				System.out.println("롤백");
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return cnt;
	} // 매칭리스트에서 본인 삭제---------------------------------------------------------

	// 예약 ----------------------------------------------------------
		public int insertrental(MATCHING_LIST m) {
			int cnt=0;
			try {
				cnt=sqlSession.insert("com.smhrd.domain.MatchingListDAO.insertrental",m);
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
		}// 예약 끝 --------------------------------------------------------	

		
		//참가 여부 확인하기
		public MATCHING_LIST MatchingCheck(MATCHING_LIST list) {
			MATCHING_LIST vo = null;
			try {
				vo = sqlSession.selectOne("com.smhrd.domain.MatchingListDAO.nameMatchingList", list);
				if(vo !=null) {
					System.out.println("커밋");
					sqlSession.commit();
				} else {
					System.out.println("롤백");
					sqlSession.rollback();
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				sqlSession.close();
			}
			return vo;
		} //
		
		
}
