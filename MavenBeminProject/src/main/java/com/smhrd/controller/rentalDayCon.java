package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Array;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.smhrd.domain.RESERVATION;
import com.smhrd.domain.RESERVATIONDAO;



public class rentalDayCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		Gson gson = new Gson();
		
		String rentalDay = request.getParameter("rentalDay");
		String day = request.getParameter("day");

		System.out.println(rentalDay);
		System.out.println(day);
		
		RESERVATIONDAO dao = new RESERVATIONDAO();
		List<RESERVATION> MATList = dao.resPossible(rentalDay);
		
		System.out.println(MATList);
		String json = gson.toJson(MATList);
		
		System.out.println(json);
		
		//PLACE_INFODAO dao = new PLACE_INFODAO();
		//List<PLACE_INFO> PlaceList = dao.PlaceAll();
		

		response.setCharacterEncoding("UTF-8");		
		response.setContentType("text/html; charset=UTF-8");
		out.print(json);

		//경기장 정보 모두 불러오기
		// 경기장 시작, 끝나는 시간 이용해서 시간표 작성  ---끝---
		// 경기장과 시간정보 불러온게 [0] ==> 전부다 for문 ---끝---
		// 년,월,일,경기장,시간 정보 보내기 ---끝---
		// matching 확인하고 일치하는 시간 회색
		// 평일인지 주말인지에 따라 다른 컬럼 가져오기








		
		
		
		
	}

	
	
	
	
}
