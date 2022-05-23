package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.USER_INFO_DAO;


public class IdCheckCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id=request.getParameter("id");
		
		USER_INFO_DAO dao = new USER_INFO_DAO();
		
		boolean result=dao.idCheck(id);
		
		PrintWriter out = response.getWriter();
		out.print(result);
		
	}

}
