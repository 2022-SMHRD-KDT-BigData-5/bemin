package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;

import com.smhrd.domain.USER_INFO;
import com.smhrd.domain.USER_INFO_DAO;


public class LoginCheckCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		
		USER_INFO m_vo = new USER_INFO(id, pw);

		USER_INFO_DAO dao = new USER_INFO_DAO();
		boolean loginbtn=dao.LoginCheck(id,pw);

		
		PrintWriter out = response.getWriter();
		out.print(loginbtn);
	}

}
