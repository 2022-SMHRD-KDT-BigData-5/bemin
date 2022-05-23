package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.matchingDAO;


public class MachingListCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Post
		String delmatid = request.getParameter("delmatid");
		
		System.out.println(request.getParameter("delmatid"));
		System.out.println(delmatid + "널 값인지 확인");
		
		matchingDAO dao = new matchingDAO();
		System.out.println(dao);
		int cnt = dao.deleteMatchingList(delmatid);
		System.out.println(cnt);
		
		if(cnt > 0) {
			System.out.println("매칭삭제 성공");
		} else {
			System.out.println("매칭삭제 실패");
		}
		
	}
		
}

