<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.USER_INFO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page import="com.smhrd.domain.matchingDAO"%>
<%@page import="com.smhrd.domain.MatchingListDAO"%>
<%@page import="com.smhrd.domain.MATCHING_LIST"%>
<%@page import="com.smhrd.domain.MATCHING"%>
<%@page import="com.smhrd.domain.USER_INFO_DAO"%>
<!DOCTYPE html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>Modal</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" /> 
   

  </head>
  <body>
    <button id="show">멤버보기</button>
    <div class="background">
      <div class="window">
        <div class="popup">
          <button id="close"><a href="./신청내역.jsp" class="close-x" >X</a></button>
          <div class="page-title">
					<h1>${mat.USER_ID}의 게임 참가 멤버</h1>
				</div>
          <table>    
            <!-- 반복 될 구간 -->
             <tr class="tier-table">
             	<th>번호</th>
                <th>ID</th>
                <th>티어</th>
                <th>매너</th>
                <th>평가하기</th>
             <tr>
             <tbody>
				<c:forEach var="user" items="${userList}" varStatus="status">
				<c:set var="mat" value="${matList}" />
				<c:set var="matid" value="${mat.USER_ID}"/>
					<tr>
						<td>${status.count}</td>
						<td><c:out value="${user.ID}" /></td>
						<td><c:out value="${user.USER_TIER}" /></td>
						<td><c:out value="${user.USER_MANNER}" /></td>
                		<td>
                			<select id="tierapp">
                   			 	<option>루키</option>
                    			<option>비기너</option>
                    			<option>주니어</option>
                    			<option>시니어</option>
                    			<option>프로</option>
                    			<option>플라이트</option>
                			</select>
              			</td>  
					</tr>	
				</c:forEach>
			</tbody>
            </tr>


       
          

         </table>

        

      <div class="move-tire">
          <a href="./티어매너안내.jsp" class="tier-ckeck">📢티어정보 확인하기</a>
      </div>
        
         <div style="margin: 10px 5px 10px 10px;"><input id="sub_bt" type="submit" value="적용" ></div>
        
      
          
        </div>
      </div>
    </div>

    <script>
      function show() {
        document.querySelector(".background").className = "background show";
      }

      function close() {
        document.querySelector(".background").className = "background";
      }
      
      document.querySelector("#show").addEventListener("click", show);
      document.querySelector("#close").addEventListener("click", close); 
      document.querySelector("#sub_bt").addEventListener("click", close); 
      
    </script>
  </body>
</html>