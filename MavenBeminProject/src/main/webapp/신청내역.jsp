<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.domain.matchingDAO"%>
<%@page import="com.smhrd.domain.MATCHING"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.USER_INFO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신청내역</title>
<link rel="stylesheet" href="assets/css/join.css">
<link rel="icon" type="image/png" href="favicon.ico">
<link
	href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<link rel="stylesheet" href="assets/css/slick/slick.css">
<link rel="stylesheet" href="assets/css/slick/slick-theme.css">
<link rel="stylesheet" href="assets/css/animate.css">
<link rel="stylesheet" href="assets/css/iconfont.css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/bootstrap.css">
<link rel="stylesheet" href="assets/css/magnific-popup.css">
<link rel="stylesheet" href="assets/css/bootsnav.css">
<link rel="stylesheet" href="assets/css/신청내역.css">

</head>
<body>
	<!-- 상단바 -->
	<nav class="navbar navbar-default bootsnav navbar-fixed">

		<!-- Start Header Navigation -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#navbar-menu">
				<i class="fa fa-bars"></i>
			</button>
			<a class="navbar-brand" href="#brand"> <img
				src="assets/images/logo1.png" class="logo" alt=""> <!--<img src="assets/images/footer-logo.png" class="logo logo-scrolled" alt="">-->
			</a>ㅣ

		</div>
		<!-- End Header Navigation -->

		<!-- navbar menu -->
		<div class="collapse navbar-collapse" id="navbar-menu">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="./index.html">Home</a></li>
				<li><a href="./마이페이지.html">마이페이지</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
		</div>
	</nav>

	<!--header-->
	<div class="container">
		<div id="mymatch" class="page-container">
			<div class="page-header">
				<div class="page-title">
					<h1>신청 내역</h1>
				</div>
				<div class="navigation-container" style="padding: 0px">
					<div class="navigation-wrapper" style="padding: top 20px;">
						<div class="navigation-item">
							<a class="selected" style="margin-left: 0px;">🏃‍♂️소셜매치</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- <div class="empty-state">
            <img src="https://plab-football.s3.amazonaws.com/static/img/img_empty_social.jpg">
        </div> -->
	<div class="container">
		<c:choose>
			<c:when test="${empty loginMember}">
				<li>로그인을 하세요.</li>
			</c:when>
			<c:otherwise>
				<%
				USER_INFO u_vo = (USER_INFO) session.getAttribute("loginMember");
				matchingDAO dao = new matchingDAO();
				List<MATCHING> matList = dao.selectMatchig(u_vo.getID());
				pageContext.setAttribute("matList", matList);
				%>
	
				<table class="table table-striped">
					<!-- <li><a href="DeleteAllMessageCon" class="button next scrolly">전체삭제하기</a></li> -->
					<tr>
						<th>번호</th>
						<th>날짜</th>
						<th>시간</th>
						<th>경기장</th>
						<th>참여인원</th>
					</tr>
					<c:forEach var="mat" items="${matList}" varStatus="status">
						<tr>
							<td>${status.count}</td>
							<td><c:out value="${mat.RES_DATE}" /></td>
							<td><c:out value="${mat.RES_TIME}" /></td>
							<td><c:out value="${mat.RES_PLACE}" /></td>
							<td><c:out value="${mat.MAT_MEMBER}" /></td>
							<!-- <td><a href="#">삭제</a></td> -->
						</tr>
					</c:forEach>
				</table>
			</c:otherwise>
		</c:choose>
	</div>
	<div class="text-center" id="paging">
            <c:set var = "page" value = "${(param.p==null)? 1: param.p}"/>
            <c:set var ="startNum" value = "${page-(page-1)%5}"/>    
            <c:set var ="lastNum" value = "23"/>    
            
            <c:if test="${startNum > 1}">
                <a href="?p=${startNum-1}&t=&q=" >이전</a>                
            </c:if>
            <c:if test="${startNum <= 1}">
                <span onclick="alert('이전 페이지가 없습니다.');">이전</span>            
            </c:if>
                            
            <span>
                <c:forEach var = "i" begin= "0" end = "4">
                    <a class = "${((page) == (startNum+i)) ?'text-orange' : '' } text-bold" href="?p=${startNum+i}&f=${param.f}&q=${param.q}" >${startNum+i}</a>
                </c:forEach>
            </span>    
            
            <c:if test="${startNum+4 < lastNum}">
                <a href="?p=${startNum+5}&t=&q=" >다음</a>
            </c:if>
            <c:if test="${startNum+4 > lastNum}">
                <span onclick="alert('다음 페이지가 없습니다.');">다음</span>            
            </c:if>
	</div>

	<!-- wrapper -->
	<div id="wrapper">

		<!-- content-->
		<div id="content">

			<!-- 일정보기 BTN-->
			<div class="btn_area">
				<button type="button" id="btnJoin">
					<a href="main.jsp">일정보기</a>
				</button>
			</div>
		</div>

	</div>
	<!-- content-->

	</div>
	<!-- wrapper -->
	<!-- JS includes -->

	<script src="assets/js/join1.js"></script>
	<script src="assets/js/vendor/jquery-1.11.2.min.js"></script>
	<script src="assets/js/vendor/bootstrap.min.js"></script>

	<script src="assets/js/owl.carousel.min.js"></script>
	<script src="assets/js/jquery.magnific-popup.js"></script>
	<script src="assets/js/jquery.easing.1.3.js"></script>
	<script src="assets/css/slick/slick.js"></script>
	<script src="assets/css/slick/slick.min.js"></script>
	<script src="assets/js/jquery.collapse.js"></script>
	<script src="assets/js/bootsnav.js"></script>



	<script src="assets/js/plugins.js"></script>
	<script src="assets/js/main.js"></script>
</body>
</html>