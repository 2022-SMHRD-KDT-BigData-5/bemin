package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.MATCHING;
import com.smhrd.domain.PLACE_INFO;
import com.smhrd.domain.PLACE_INFODAO;


public class RentalViewCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		request.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		
		
		String year = request.getParameter("year");
		String month = request.getParameter("month");
		String date = request.getParameter("date");
		String place = request.getParameter("place");
		String time = request.getParameter("time");
		String start = request.getParameter("start");
		
		//예약 날짜정보
		String RES_DATE = year+"-"+month+"-"+date;
		
		MATCHING rentalDate = new MATCHING(RES_DATE, time, place);
		
		//예약 경기장 정보
		PLACE_INFODAO dao = new PLACE_INFODAO();
		PLACE_INFO placeInfo = dao.selectPlace(place);
		response.setContentType("text/html; charset=UTF-8");
		
		if(rentalDate != null) {
			HttpSession session = request.getSession();
			session.setAttribute("rentalDate", rentalDate);
			session.setAttribute("placeInfo", placeInfo);
			session.setAttribute("start", start);
			response.sendRedirect("Pay.jsp");
		}else{
			response.sendRedirect("Rental.jsp");
			
		}
		
		
	}

}
