package com.smhrd.controller;

import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.smhrd.domain.USER_INFO;
import com.smhrd.domain.USER_INFO_DAO;


public class Join1Con extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//post방식으로 데이터 전송 시 인코딩
		request.setCharacterEncoding("utf-8");
		
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		String name=request.getParameter("name");
		String gender=request.getParameter("gender");
		String email=request.getParameter("email");
		String tel=request.getParameter("tel");
		String tier =request.getParameter("user_tier");
		BigDecimal user_tier = new BigDecimal(tier);
		String address =request.getParameter("address");
		
		USER_INFO m_vo = new USER_INFO(id,pw,name,gender,email,tel,user_tier,address);
		
		USER_INFO_DAO dao = new USER_INFO_DAO();
		int cnt=dao.insertUSER_INFO(m_vo);	
		if(cnt>0) {
			System.out.println("회원가입 성공");		
			response.sendRedirect("main.jsp");
		}else {
			System.out.println("회원가입 실패");
			response.sendRedirect("회원가입.jsp");
		}
		
	
	}

}
