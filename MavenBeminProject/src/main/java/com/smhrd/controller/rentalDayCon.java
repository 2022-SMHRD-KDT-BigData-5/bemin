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
import com.smhrd.domain.MATCHING;
import com.smhrd.domain.matchingDAO;


public class rentalDayCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		Gson gson = new Gson();
		
		String rentalDay = request.getParameter("rentalDay");
		String local = request.getParameter("local");
		
		
		matchingDAO dao = new matchingDAO();
		List<MATCHING> list = dao.selectDayMat(rentalDay,local);
		

		//System.out.println(list);

	    String json = gson.toJson(list);

		

		response.setCharacterEncoding("UTF-8");		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print(json);









		
		
		
		
	}

	
	
	
	
}
