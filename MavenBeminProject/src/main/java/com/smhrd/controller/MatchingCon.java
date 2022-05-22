package com.smhrd.controller;

import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.MATCHING;
import com.smhrd.domain.matchingDAO;


public class MatchingCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
				
		// Post
		int matNum = BigDecimal.valueOf(request.getParameter("matNum"));
		MATCHING m_Num = new MATCHING();
		request.setAttribute("matNum", matNum);
		matchingDAO dao = new matchingDAO();
		int cnt = dao.deleteMatchingIdex(matNum);
		
		if(cnt > 0) {
			System.out.println("예약삭제 성공");
		} else {
			System.out.println("예약삭제 실패");
		}
		
		response.sendRedirect("신청내역.jsp");
	}

	
}
	
