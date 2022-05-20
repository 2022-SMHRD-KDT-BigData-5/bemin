package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.MATCHING;
import com.smhrd.domain.matchingDAO;


public class MatchingCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
				System.out.println("[MatchingCon]");
				
				// post 방식으로 데이터 전송 시 인코딩
				request.setCharacterEncoding("UTF-8");

				// id, pw 받아오기
				String USER_ID = request.getParameter("id");

				// Member객체에 담기
				MATCHING m_vo = new MATCHING(USER_ID);

				matchingDAO dao = new matchingDAO();
				MATCHING matching = dao.FindMatching(m_vo);

				if (matching != null) {
					// 매칭 성공
					System.out.println("매칭 성공");
					HttpSession session = request.getSession();
					session.setAttribute("matching", matching);
					response.sendRedirect("신청내역.jsp");
				} else {
					// 매칭 실패
					System.out.println("매칭 실패");
					response.sendRedirect("main.jsp");
				}
	}

}
