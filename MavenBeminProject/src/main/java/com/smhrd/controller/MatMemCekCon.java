package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.MATCHING;
import com.smhrd.domain.MATCHING_LIST;
import com.smhrd.domain.MatchingListDAO;
import com.smhrd.domain.matchingDAO;


public class MatMemCekCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		String matno = request.getParameter("matno");
		
		BigDecimal MAT_NO = new BigDecimal(matno);
		
		matchingDAO matdao = new matchingDAO();
		MATCHING matdata = matdao.matnoMatching(MAT_NO);
		
		
		MatchingListDAO listdao = new MatchingListDAO();
		List<MATCHING_LIST> listdata = listdao.ViewMatching(MAT_NO);
		
		int member = Integer.parseInt(matdata.getMAT_MEMBER());
		
		int data = member - listdata.size();
		
		PrintWriter out = response.getWriter();
		
		out.print(data);
		
	
		
	}

}
