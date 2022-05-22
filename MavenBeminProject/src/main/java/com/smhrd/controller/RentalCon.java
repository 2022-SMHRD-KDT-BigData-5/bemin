package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.MATCHING;
import com.smhrd.domain.USER_INFO;
import com.smhrd.domain.matchingDAO;


public class RentalCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		request.setCharacterEncoding("utf-8");
		
		// - rental 페이지에서 설정한 날짜,경기장,시간 정보 가져오기
		MATCHING rentalDate = (MATCHING)session.getAttribute("rentalDate");
		
		String RES_DATE = rentalDate.getRES_DATE();
		String RES_TIME = rentalDate.getRES_TIME();
		String RES_PLACE = rentalDate.getRES_PLACE();
		//시간
		String start = (String)session.getAttribute("start");
		
		// - pay 페이지에서 예약 정보 가져오기
		String UNIT = request.getParameter("UNIT");
		String MAT_MEMBER = request.getParameter("MAT_MEMBER");
		String STN_TIER = request.getParameter("STN_TIER");
		String STN_MANNER = request.getParameter("STN_MANNER");
		String GENDER = request.getParameter("GENDER");

		
		
		// user_info에서 로그인한 아이디 캐시정보 가져오기(세션)
		USER_INFO loginMember = (USER_INFO)session.getAttribute("loginMember");
		
		String USER_ID = loginMember.getID();
		// 선택한 경기장의 요금 정보 가져와야함
		MATCHING rental = new MATCHING(RES_DATE,RES_TIME,RES_PLACE,USER_ID,UNIT,MAT_MEMBER,STN_TIER,STN_MANNER,GENDER);
		
		matchingDAO dao = new matchingDAO();
		int cnt = dao.insertRental(rental);
		
		if (cnt > 0) {
			System.out.println("예약 성공");
			response.sendRedirect("RealMain.jsp");
		} else {
			System.out.println("예약 실패");
			response.sendRedirect("Rental.jsp");
		}
		
		
		
		
		
	}

}
