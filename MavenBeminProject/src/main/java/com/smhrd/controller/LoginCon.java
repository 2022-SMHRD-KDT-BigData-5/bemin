package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.USER_INFO;
import com.smhrd.domain.USER_INFO_DAO;

public class LoginCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("[LoginCon]");

		// post 방식으로 데이터 전송 시 인코딩
		request.setCharacterEncoding("UTF-8");

		// id, pw 받아오기

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");


		// Member객체에 담기

		USER_INFO m_vo = new USER_INFO(id, pw);

		System.out.println(m_vo);

		USER_INFO_DAO dao = new USER_INFO_DAO();
		System.out.println(dao);
		USER_INFO loginMember = dao.selectMember(m_vo);
		
		System.out.println(loginMember);
		
		if (loginMember != null) {
			// 로그인 성공
			System.out.println("로그인 성공");
			HttpSession session = request.getSession();
			session.setAttribute("loginMember", loginMember);
			response.sendRedirect("RealMain.jsp");
		} else {
			// 로그인 실패
			
			System.out.println("로그인 실패");
			response.sendRedirect("LoginCheck.html");
		}

	}

}
