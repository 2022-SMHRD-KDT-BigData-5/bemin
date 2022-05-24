package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.smhrd.domain.USER_INFO;
import com.smhrd.domain.USER_INFO_DAO;


public class UpdateCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("[UpdateCon]");
		//post방식 데이터 전송 인코딩
		request.setCharacterEncoding("utf-8");
		
		//id넣을때 세션에서 가져오기
		HttpSession session=request.getSession();
		USER_INFO loginMember=(USER_INFO)session.getAttribute("loginMember");
		String id=loginMember.getID();
		
		String pw=request.getParameter("pw");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String tel=request.getParameter("tel");
		
		USER_INFO m_vo=new USER_INFO(id, pw, name, email, tel);
		
		USER_INFO_DAO dao = new USER_INFO_DAO();
		
		int cnt = dao.update(m_vo);
		
		if(cnt>0) {
			System.out.println("회원정보수정 성공");
			//수정된 값으로 loginMember 세션값을 재설정
			session.setAttribute("loginMember", m_vo);
			
			response.sendRedirect("RealMain.jsp");
		}else {
			System.out.println("회원정보수정 실패");
			response.sendRedirect("joinUpdate.jsp");
		}
	}

}
