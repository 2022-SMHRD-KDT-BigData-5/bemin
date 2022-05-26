package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.TIER;
import com.smhrd.domain.USER_INFO_DAO;
import com.smhrd.domain.tierDAO;

public class tierUpdateCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		// 모달에서 정보 가져오기 -> 유저인포에 insert
		String tier_app = request.getParameter("tier_app");
		String apped_id = request.getParameter("apped_id");
		String app_id = request.getParameter("app_id");
		
		TIER t_vo = new TIER(tier_app,apped_id,app_id);
		
		
		
		
		
		tierDAO tdao = new tierDAO();
		int cnt1 = tdao.tierInsert(t_vo);
		String a = "";
		PrintWriter out = response.getWriter();

		
		if(cnt1>0) {
			System.out.println("티어 인서트 성공");
			out.print(cnt1);
		}else {
			System.out.println("티어 인서트 실패");

		}
	}



}
