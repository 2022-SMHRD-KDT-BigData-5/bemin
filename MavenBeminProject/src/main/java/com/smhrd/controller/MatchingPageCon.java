package com.smhrd.controller;

import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.MATCHING;
import com.smhrd.domain.PLACE_INFO;
import com.smhrd.domain.PLACE_INFODAO;
import com.smhrd.domain.USER_INFO_DAO;
import com.smhrd.domain.matchingDAO;


public class MatchingPageCon extends HttpServlet {
   private static final long serialVersionUID = 1L;

   

   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      HttpSession session = request.getSession();
      request.setCharacterEncoding("utf-8");
      //매칭번호 받기
      //int matno = Integer.parseInt(request.getParameter("matno"));
      
      String matno = request.getParameter("matno");
      
      BigDecimal MatNo = new BigDecimal(matno);

      //System.out.println(MatNo+"값");
      matchingDAO dao1 = new matchingDAO(); 
      MATCHING mnInfo = dao1.matnoMatching(MatNo);
        
        //예약 경기장 정보 
        PLACE_INFODAO dao2 = new PLACE_INFODAO(); 
        PLACE_INFO matpInfo = dao2.selectPlace(mnInfo.getRES_PLACE());


        
        if(mnInfo != null) { 
        session.setAttribute("mnInfo",mnInfo);
        session.setAttribute("matpInfo",matpInfo);
        response.sendRedirect("match.jsp");
        }else{
           
        response.sendRedirect("RealMain.jsp");
        
        }
      
   }

}
