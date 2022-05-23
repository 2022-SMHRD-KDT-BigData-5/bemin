package com.smhrd.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.sqlSessionManager;

public class USER_INFO_DAO {
	SqlSessionFactory sqlSessionFactory = sqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();

	// 아이디 찾기
	public USER_INFO FindID(USER_INFO u) {

		USER_INFO u_vo = null;
		try {
			u_vo = sqlSession.selectOne("com.smhrd.domain.USER_INFO_DAO.selectUSER_INFO", u);

			if (u_vo != null) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return u_vo;

	}// 아이디 찾기 끝

	// 로그인 -------------------------------------------------------
	public USER_INFO selectMember(USER_INFO member) {
		USER_INFO loginMember = null;
		try {
			loginMember = sqlSession.selectOne("com.smhrd.domain.USER_INFO_DAO.LoginUSER_INFO", member);
			if (loginMember != null) {
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
	
	
	// 참여멤버 보기--------------------------------------------------------
	public List<USER_INFO> joinUserView(String ID) {
		List<USER_INFO> UserList = null;
		try {
			UserList = sqlSession.selectList("com.smhrd.domain.USER_INFO.JoinMember", ID);
			if (UserList != null) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return UserList;
	}// 참여멤버 보기 끝-----------------------------------------------------

}
