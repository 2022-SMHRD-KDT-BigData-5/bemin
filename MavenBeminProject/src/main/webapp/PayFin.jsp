<%@page import="com.smhrd.domain.MATCHING"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
<link rel="stylesheet" href="assets/css/로그인.css">
<link rel="stylesheet" href="assets/css/pay.css">
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/responsive.css" />

<link rel="stylesheet" href="assets/css/payfin.css">

<script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
<body>
<form class="fom">
		<div class="logoName">
			<a href="RealMain.jsp"><h1>플라이트</h1></a>
		</div>

		<div class="confim">
			<div class="confim_header">
				<div class="confim-header_base">
					<div class="confim-header_title">
						<h1 style="text-align: center;">예약확인</h1>
						<h3 id="con-info">예약내용</h3>
						<br>
						<h4 style="font-weight: 400;">예약 날짜 : ${rental.RES_DATE}</h4>
						<br>
						<h4 style="font-weight: 400;">예약 시간 : ${rental.RES_TIME}</h4>
						<br>
						<h4 style="font-weight: 400;">예약 장소 : ${rental.RES_PLACE}</h4>
						<br> <br>
					</div>
				</div>
			</div>

			<div class="accordion_item">
				<div class="accordion-item_title">
					<h3 style="text-align: center;">
						⭐플라이트는 바른 생활체육 문화를 지양합니다.⭐ 
						<br> 항상 다른 이용자들을 배려하는 플레이를 권장드리며,
						부상의 위험 없이 즐거운 이용 부탁드려요.
					</h3>

				</div>
			</div>
			<div class="confim-fi">
				<br>
				<p>
				<h2>😊예약이 완료 되었습니다.</h2>
				</p>
			</div>
			<div class="confim-mov">
				<br> <br> <a href="RealMain.jsp" id="confim-main">메인페이지</a> 
				<a href="sinchung.jsp" id="confim-check">예약내용확인</a>
			</div>
	</form>
</body>
</html>