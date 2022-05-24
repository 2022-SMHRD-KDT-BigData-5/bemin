package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.MatchingListDAO;

public class JoinMemberCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		String user_id = request.getParameter("user_id");
		int mat_num = Integer.parseInt(request.getParameter("mat_num"));
		
		MatchingListDAO listdao = new MatchingListDAO();
		int cnt = listdao.nameMatchingList(user_id, mat_num);
		
		if (cnt > 0) {
			// 멤버보기 성공
			System.out.println("멤버보기 성공");
		} else {
			// 멤버보기
			System.out.println("멤버보기 실패");
		}
	}
}
