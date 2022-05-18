package com.smhrd.controller;

import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.USER_INFO;


public class Join1Con extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		String name=request.getParameter("name");
		String gender=request.getParameter("gender");
		String email=request.getParameter("email");
		String tel=request.getParameter("tel");
		//BigDecimal user_tier=(BigDecimal)request.getParameter("user_tier");
		
		
		//USER_INFO join_vo = new USER_INFO(id,pw,name,gender,email,tel,user_tier);
	}

}
