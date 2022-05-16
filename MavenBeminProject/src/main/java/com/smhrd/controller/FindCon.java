package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.USER_INFO;
import com.smhrd.domain.USER_INFO_DAO;


public class FindCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		//아이디 찾기 입력 값
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		int tel = Integer.parseInt(request.getParameter("tel"));
		
		USER_INFO user = new USER_INFO(name, tel);
		
		USER_INFO_DAO dao = new USER_INFO_DAO();
		
		USER_INFO u_vo = dao.FindID(user);
		
		PrintWriter out = response.getWriter();
		
		out.print(u_vo.getID());

		
		
		
		
		
		
	}

}
