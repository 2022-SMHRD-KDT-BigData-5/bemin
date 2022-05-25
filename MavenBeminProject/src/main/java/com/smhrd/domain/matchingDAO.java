package com.smhrd.domain;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.sqlSessionManager;

public class matchingDAO {

   SqlSessionFactory sqlSessionFactory = sqlSessionManager.getSqlSession();
   SqlSession sqlSession = sqlSessionFactory.openSession();

   // 게시판 매칭 내역보기--------------------------------------------------------------
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
   }// 게시판 매칭 내역보기 끝------------------------------------------------------------
   
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
   
   // 매칭테이블 리스트로 불러오기 ---------------------------------------------------------
   public MATCHING MatchingInfo(MATCHING match) {
      MATCHING matchingid = null;
      try {
         matchingid = sqlSession.selectOne("com.smhrd.domain.matchingDAO.selectMatchingView", match);
         if (matchingid != null) {
            sqlSession.commit();
         } else {
            sqlSession.rollback();
         }
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         sqlSession.close();
      }
      return matchingid;
   } // 매치들 끝 --------------------------------------------------------------------
   

   //예약 하기----------------------------------------------------------------------
   public int insertRental(MATCHING rental_info) {
      SqlSession sqlSession = sqlSessionFactory.openSession();
      int cnt = 0;
      try {
         cnt = sqlSession.insert("com.smhrd.domain.matchingDAO.insertRental", rental_info);

         if (cnt > 0) {
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
   }//예약하기 끝---------------------------------------------------------------------

   //  매칭게시판에서 내글 삭제 ---------------------------------------------------------
   public int deleteMatchingIdex(int delmatNum) {
      int cnt = 0;
      try {
         cnt = sqlSession.delete("com.smhrd.domain.matchingDAO.deleteMatchingIdex",delmatNum);
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
   } // 매칭게시판에서 내글 삭제---------------------------------------------------------
   
   
   //  매칭게시판에서 내글 삭제 ---------------------------------------------------------
   public int selectMatNum(BigDecimal matNum) {
      int cnt = 0;
      try {
         cnt = sqlSession.delete("com.smhrd.domain.matchingDAO.selectMatNum",matNum);
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
   } // 매칭게시판에서 내글 삭제---------------------------------------------------------
	

   // 매칭테이블 리스트로 불러오기 ---------------------------------------------------------
   public MATCHING Matchingid(String match) {
      MATCHING matchingid = null;
      try {
         matchingid = sqlSession.selectOne("com.smhrd.domain.matchingDAO.Matchingid", match);
         if (matchingid != null) {
            sqlSession.commit();
         } else {
            sqlSession.rollback();
         }
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         sqlSession.close();
      }
      return matchingid;
   } // 매치들 끝 --------------------------------------------------------------------
   

   // 메인 날짜별 메칭정보 출력---------------------------------------------------------
	public List<MATCHING> selectDayMat(String RES_DATE, String LOCAL) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
	      Map map = new HashMap();
	      map.put("RES_DATE", RES_DATE);
	      map.put("LOCAL", LOCAL);
		
		
		List<MATCHING> msg_vo = null;
		try {
			msg_vo = sqlSession.selectList("com.smhrd.domain.matchingDAO.selectDayMat", map);

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
	}   // 메인 날짜별 메칭정보 출력 ---------------------------------------------------------
	
	//예약한 마지막 시퀀스 번호 조회---------------------------------------------------------
	public BigDecimal renSeqNo() {

		BigDecimal num = null;
	      try {
	    	  num = sqlSession.selectOne("com.smhrd.domain.matchingDAO.selectSeqNo");

	         if (num != null) {
	            sqlSession.commit();
	         } else {
	            sqlSession.rollback();
	         }

	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         sqlSession.close();
	      }
	      return num;

	   }//예약한 마지막 시퀀스 번호 조회   끝---------------------------------------------------------
<<<<<<< HEAD
=======

	 //매칭번호리스트 보기-----------------------------------------------------------
    public MATCHING matnoMatching(BigDecimal mn) {
       SqlSession sqlSession = sqlSessionFactory.openSession();
       MATCHING Matching_no = null;
       try {
          Matching_no = sqlSession.selectOne("com.smhrd.domain.matchingDAO.matnoMatching", mn);
          if (Matching_no != null) {
             sqlSession.commit();
             System.out.println("커밋");
          } else {
             sqlSession.rollback();
             System.out.println("롤");
          }
       } catch (Exception e) {
          e.printStackTrace();
       } finally {
          sqlSession.close();
       }
       return Matching_no;
    }//매칭번호리스트 보기 끝-----------------------------------------------------------   

>>>>>>> branch 'master' of https://github.com/2022-SMHRD-KDT-BigData-5/bemin.git
	
	   // 매칭테이블 리스트로 불러오기 ---------------------------------------------------------
	   public MATCHING selectMatno(MATCHING mat_vo) {
	      MATCHING matchingno = null;
	      try {
	    	  matchingno = sqlSession.selectOne("com.smhrd.domain.matchingDAO.selectMatno", mat_vo);
	         if (matchingno != null) {
	            sqlSession.commit();
	         } else {
	            sqlSession.rollback();
	         }
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         sqlSession.close();
	      }
	      return matchingno;
	   } // 매치들 끝 --------------------------------------------------------------------

	   

	   
}