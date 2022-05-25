package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.smhrd.domain.MATCHING_LIST;
import com.smhrd.domain.MatchingListDAO;
import com.smhrd.domain.USER_INFO;
import com.smhrd.domain.USER_INFO_DAO;

public class JoinMemberCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

  		String mat_no =  request.getParameter("matNO");
  		BigDecimal number = new BigDecimal(mat_no);
  		System.out.println(mat_no + " mat_no값");
  		
  		MatchingListDAO matlistdao = new MatchingListDAO();
  		System.out.println(matlistdao + " matdao값");
  		
  		List<String> list = matlistdao.ViewMatching(number);
  		System.out.println(matlistdao.ViewMatching(number)+ " ㅇㄹㄴㅇf리스틎2");
  		System.out.println(list + " ㅇㄹㄴㅇㅇㅇㄴㄴㄹㅁㅇㄹㄴㅁㄹ2");
  		
  		
  		USER_INFO_DAO userdao = new USER_INFO_DAO();
  		System.out.println(list.get(0)+ "첫번째 데이터");
  		System.out.println(list.get(1)+ "두번째 데이터");
  		
  		
  		ArrayList<USER_INFO> arr = new ArrayList<USER_INFO>();
  		USER_INFO member=null;	
  			
  		arr = userdao.selectMatMember(list);
  		System.out.println("데이터"+arr);
  		
  		
  		
  		
  		Gson gson = new Gson();
  		
  		String json = gson.toJson(arr);
  		
  		
  		response.setCharacterEncoding("UTF-8");      
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
  		out.print(json);
  		
  		System.out.println(json);
  		
  		
	}
}
