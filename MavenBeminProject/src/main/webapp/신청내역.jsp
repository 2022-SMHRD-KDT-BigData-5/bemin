<%@page import="com.smhrd.domain.MatchingListDAO"%>
<%@page import="com.smhrd.domain.MATCHING_LIST"%>
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
<link rel="stylesheet" href="assets/css/pagingbootstrap.css">
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
			<a class="navbar-brand" href="./RealMain.jsp"> <img
				src="assets/images/logo1.png" class="logo" alt=""> <!--<img src="assets/images/footer-logo.png" class="logo logo-scrolled" alt="">-->
			</a>ㅣ

		</div>
		<!-- End Header Navigation -->

		<!-- navbar menu -->
		<div class="collapse navbar-collapse" id="navbar-menu">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="./RealMain.jsp">Home</a></li>
				<li><a href="./Maypage.jsp">마이페이지</a></li>
				<li><a href="LogoutCon">로그아웃</a></li>
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
					<h1 name="id">${loginMember.ID}님의 신청 내역</h1>
				</div>
				<div class="navigation-container" style="padding: 0px">
					<div class="navigation-wrapper" style="padding: top 20px;">
						<div class="navigation-item">
							<a class="selected" style="margin-left: 0px;">🏃‍♂️소셜 매치</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<c:choose>
			<c:when test="${empty loginMember}">
				<li>로그인을 하세요.</li>
			</c:when>
			<c:otherwise>
				<%
				matchingDAO dao = new matchingDAO();
				USER_INFO u_vo = (USER_INFO)session.getAttribute("loginMember");
				List<MATCHING> matList = dao.selectMatchig(u_vo.getID());
				pageContext.setAttribute("matList", matList);
				%>
				<table id="table_box_bootstrap" class="overview-table-cases custom">
				<table class="table table-striped">
				<thread>
					<tr class="overview-table-headers">
						<th>번호</th>
						<th>날짜</th>
						<th>시간</th>
						<th>경기장</th>
						<th>참여인원</th>
						<th>예약/참가취소</th>
						<th>멤버보기</th>
					</tr>
					</thread>
					<tbody>
					<c:forEach var="mat" items="${matList}" varStatus="status">
					<c:set var="matid" value="${mat.USER_ID}"/>
					<c:set var="matnum" value="${mat.MAT_NO}"/>
						<tr>
							<td>${status.count}</td>
							<td><c:out value="${mat.RES_DATE}" /></td>
							<td><c:out value="${mat.RES_TIME}" /></td>
							<td><c:out value="${mat.RES_PLACE}" /></td>
							<td><c:out value="${mat.MAT_MEMBER}" /></td>
							<c:choose>
								<c:when test="${matid eq logid}">
									<c:if test="${mat.MAT_CPL eq '1'}">
										<td>취소불가</td>
									</c:if>
									<c:if test="${mat.MAT_CPL eq '0'}">
										<td><button onclick="DelMat(${mat.MAT_NO});">예약취소</button></td>
									</c:if>
								</c:when>
								<c:otherwise>
									<c:if test="${mat.MAT_CPL eq '1'}">
										<td>취소불가</td>
									</c:if>
									<c:if test="${mat.MAT_CPL eq '0'}">
										<td><button onclick="DelMatList('${loginMember.ID}', ${mat.MAT_NO});">참가취소</button></td>
									</c:if>
								</c:otherwise>
								</c:choose>
							 	<td><button onclick="showMemList('${mat.USER_ID}');">멤버보기</button></td>
							</tr>	
						</c:forEach>
						</tbody>
					</table>
				</table>
			</c:otherwise>
		</c:choose>
	</div>

	<!--<div id="table_box_bootstrap"></div>

	<div class="box">
		<ul class="pagination">
			<li class="disabled"><a href="#">«</a></li>
			<li class="active"><a href="#">1</a></li>
			<li class=""><a href="#">2</a></li>
			<li class=""><a href="#">3</a></li>
			<li class=""><a href="#">4</a></li>
			<li class=""><a href="#">5</a></li>
			<li class=""><a href="#">»</a></li>
		</ul>
	</div>

	<script>
    	var box = paginator({
       		table: document.getElementById("table_box_bootstrap").getElementsByTagName("table")[0],
       	 	box_mode: "list",
    		});
    	box.className = "box";
    	document.getElementById("table_box_bootstrap").appendChild(box);
	</script>-->

	<!-- wrapper -->
	<div id="wrapper">

		<!-- content-->
		<div id="content">

			<!-- 메인으로 이동 BTN-->
			<div class="btn_area">
				<button type="button" id="btnJoin">
					<a href="./RealMain.jsp">매칭 게시판으로 이동</a>
				</button>
			</div>
		</div>
		<!-- content-->

	</div>
	<!-- wrapper -->


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
	<script type="text/javascript" src="paginator.js"></script>
    <script type="text/javascript" src="table.js"></script>
	<script>
    // 게시글 삭제(AJax 처리)
    function DelMat(MAT_NO) {
        var query = {delmatNum :MAT_NO};
        var ans = confirm("예약을 취소하시겠습니까?");
        if(!ans) return false;
        
        $.ajax({
            url  : "MatchingCon",
            type : "get",
            data : query,
            success : function(data) {
            	console.log(data);
                  alert("예약 취소 성공");
                  location.reload();
            },
            error : function(data) {
            	console.log(data);
                alert("예약 취소 실패");
                location.reload();
            }
        });
    }
    // 신청 취소(AJax 처리)
    function DelMatList(id, no) {
        var query = {dellistid : id, dellistno : no};
        var ans = confirm("신청을 취소하시겠습니까?");
        console.log(id, no)
        if(!ans) return false;
        
        $.ajax({
            url  : "MachingListCon",
            type : "get",
            data : query,
            success : function(data) {
            	console.log(data);
                alert("신청 취소 성공");
                location.reload();
            },
            error : function(data) {
            	console.log(data);
                alert("신청 취소 실패");
                location.reload();
            }
        });
    }    
    
    // 멤버보기(AJax 처리)
    function showMemList(USER_ID) {
        var query = {user_id : USER_ID};
        console.log(USER_ID);
        if(!ans) return false;
        
        $.ajax({
            url  : "JoinMemberCon",
            type : "post",
            data : query,
            success : function(data) {
            	console.log(data);
            	window.location.href = "modal.jsp";
            },
            error : function(data) {
            	console.log(data);
            	location.reload();
            }
        });
    }

	</script>
	
</body>
</html>