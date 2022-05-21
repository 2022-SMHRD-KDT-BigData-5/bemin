package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.matchingDAO;


public class MatchingCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		// Post
		int matNum = Integer.parseInt(request.getParameter("matNum"));
		
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
	
