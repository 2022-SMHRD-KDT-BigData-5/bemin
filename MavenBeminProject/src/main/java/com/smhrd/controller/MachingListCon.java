package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.MATCHING_LIST;
import com.smhrd.domain.MatchingListDAO;

public class MachingListCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		// Post
		String dellistid = request.getParameter("dellistid");
		int dellistno = Integer.parseInt(request.getParameter("dellistno"));		
		MatchingListDAO listdao = new MatchingListDAO();
		
		int cnt = listdao.deleteMatchingList(dellistid, dellistno);

		if(cnt > 0) {
			System.out.println("매칭삭제 성공");
		} else {
			System.out.println("매칭삭제 실패");
		}
		
	}
		
}

