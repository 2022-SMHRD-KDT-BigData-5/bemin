package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.USER_INFO;
import com.smhrd.domain.USER_INFO_DAO;


public class FindCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		//아이디 찾기 입력 값
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		
		USER_INFO user_vo = new USER_INFO(id, name, tel);
		
		USER_INFO_DAO dao = new USER_INFO_DAO();
		
		USER_INFO Find = dao.FindID(user_vo);
		
		PrintWriter out = response.getWriter();
		
		if(id != null) {
			out.print(Find.getPW());			
		}else {
			out.print(Find.getID());			
		}
		
		
		

		
		
		
		
		
		
	}

}
