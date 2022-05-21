package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.MATCHING;


public class RentalCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// - 예약 페이지에서 날짜,경기장,시간 정보 가져올수 있음
		// - 결제 페이지에 경기장 정보 보낼 수 있음
		// 경기장 예약 페이지에서 날짜,경기장,시간 정보 가져오기(matching 타입 세션)(예약->결제로 가져올 생성자)
		// user_info에서 로그인한 아이디 캐시정보 가져오기(세션)
		// 선택한 경기장의 요금 정보 가져와야함
		request.setCharacterEncoding("utf-8");
		
		String year = request.getParameter("year");
		String month = request.getParameter("month");
		String date = request.getParameter("date");
		String place = request.getParameter("place");
		String time = request.getParameter("time");
		
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		out.print(year);
		out.print(month);
		out.print(date);
		out.print(place);
		out.print(time);
		
		
		
		
		
	}

}
