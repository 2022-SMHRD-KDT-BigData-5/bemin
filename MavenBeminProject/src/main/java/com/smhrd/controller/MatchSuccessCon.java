package com.smhrd.controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.MATCHING;
import com.smhrd.domain.MATCHING_LIST;
import com.smhrd.domain.MatchingListDAO;
import com.smhrd.domain.USER_INFO;
import com.smhrd.domain.matchingDAO;


public class MatchSuccessCon extends HttpServlet {
   private static final long serialVersionUID = 1L;


   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
      HttpSession session = request.getSession();
      request.setCharacterEncoding("utf-8");
      MATCHING mat = (MATCHING)session.getAttribute("mnInfo");
      int matno= mat.getMAT_NO().intValue();
      
      //matchingDAO rentalDao = new matchingDAO();
      USER_INFO loginMember = (USER_INFO)session.getAttribute("loginMember");
      String USER_ID = loginMember.getID();
      
 
      MATCHING_LIST list = new MATCHING_LIST();

      list.setMAT_NO(matno);
      list.setID(USER_ID);
      
      MatchingListDAO listDao = new MatchingListDAO();
      MatchingListDAO listDao2 = new MatchingListDAO();
      int cnt=listDao.insertrental(list); 
      
      //matching_list에 insert하면 해당 mat no 갯수를
      BigDecimal num = new BigDecimal(matno);
      List<String> numlist = listDao2.ViewMatching(num);
      int Size = numlist.size();
      String listSize = Integer.toString(Size);
      System.out.println(listSize);
      //matching NOW_MEMBER에 update
      MATCHING vo = new MATCHING(num, listSize);
      matchingDAO matDao = new matchingDAO();
      int memberCnt = matDao.updatemember(vo);
      
      if(cnt>0 && memberCnt>0) {
         System.out.println("신청 완료");
         response.sendRedirect("MatSuccess.html");
 
      }else {
         System.out.println("신청 실패");
         response.sendRedirect("match.jsp");
      }
   }


private String toString(int size) {
	// TODO Auto-generated method stub
	return null;
}

}