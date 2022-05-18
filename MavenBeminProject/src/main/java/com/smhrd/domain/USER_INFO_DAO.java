package com.smhrd.domain;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.sqlSessionManager;

public class USER_INFO_DAO {
	SqlSessionFactory sqlSessionFactory = sqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	//아이디 찾기
	public USER_INFO FindID(USER_INFO u) {
		
		USER_INFO u_vo =null;
		try {
			u_vo = sqlSession.selectOne("com.smhrd.domain.USER_INFO_DAO.selectUSER_INFO",u);
		
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
	
	// 로그인 -------------------------------------------------------
	public USER_INFO selectMember(USER_INFO member) {
		USER_INFO loginMember = null;
		try {
			loginMember = sqlSession.selectOne("com.smhrd.domain.USER_INFO_DAO.LoginUSER_INFO", member);
			if(loginMember != null) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return loginMember;
	} // 로그인 끝 ----------------------------------------------------
	
	//회원가입 ----------------------------------------------------------
	public int insertUSER_INFO(USER_INFO member) {
		int cnt=0;
		try {
			cnt=sqlSession.insert("com.smhrd.domain.USER_INFO_DAO.insertUSER_INFO",member);
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
	}// 회원가입 끝 --------------------------------------------------------	
	
}
