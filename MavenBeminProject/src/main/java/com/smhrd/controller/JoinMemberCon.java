package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.MATCHING;
import com.smhrd.domain.matchingDAO;

public class JoinMemberCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("조인리스트멤버");
		
		request.setCharacterEncoding("UTF-8");
		// 개설한 사람 아이디 받기
		String user_id = request.getParameter("user_id");
		// 객체에 담기
		MATCHING mat_vo = new MATCHING(user_id);
		
		matchingDAO mdao = new matchingDAO();
		MATCHING matchingid = mdao.MatchingInfo(mat_vo);
				
		if (matchingid != null) {
			// 로그인 성공
			System.out.println("게임 개설 아이디 출력 성공");
			HttpSession session = request.getSession();
			session.setAttribute("matchingid", matchingid);
		} else {
			// 로그인 실패
			
			System.out.println("게임 개설 아이디 출력 성공 실패");		
		}
	}
}
