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
    <link rel="stylesheet" href="assets/css/modal.css">
  </head>
  <body>
    <div class="background">
      <div class="window">
        <div class="popup">
         	<button id="close"><a href="./신청내역.jsp" class="close-x" >X</a></button>
         	<div class="page-title">
            <%
            	MATCHING m_vo = (MATCHING)session.getAttribute("matchingid");
             	MatchingListDAO matdao = new MatchingListDAO();
				List<MATCHING_LIST> UserList = matdao.selectMatching(m_vo.getUSER_ID());
				pageContext.setAttribute("UserList", UserList);
             %>
			<h1>${matchingid.USER_ID}님의 게임 참가 멤버</h1>
			</div>
          	<table>    
            <!-- 반복 될 구간 -->
             <tr class="tier-table">
             	<th>번호</th>
                <th>ID</th>
                <th>평가하기</th>
             </tr>
             <tbody>
				<c:forEach var="user" items="${UserList}" varStatus="status">
					<tr>
						<td>${status.count}</td>
						<td><c:out value="${user.ID}" /></td>
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
			<button onclick="DelMatList('${loginMember.ID}', ${mat.MAT_NO});">확인</button>
			</table>
		</div>
	</div>
</div>
			
 
	<script>
	
	function abc(){  
		var val = "user_id";     
		opener.document.getElementById("abc").value = val;  
		window.opener.form.abc.value = val;  
		window.close();}


		function close() {
			document.querySelector(".background").className = "background";
		}

		document.querySelector("#close").addEventListener("click", close);
		document.querySelector("#sub_bt").addEventListener("click", close);
	</script>
</body>
</html>