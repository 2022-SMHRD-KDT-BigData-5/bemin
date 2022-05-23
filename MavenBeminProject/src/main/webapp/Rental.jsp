<%@page import="java.io.PrintWriter"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.domain.PLACE_INFO"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.PLACE_INFODAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="en">
<head>
<meta charset="UTF-8">
<title>Made One</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="favicon.ico">

<!--Google Font link-->
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
<link rel="stylesheet" href="assets/css/메인.css">
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/responsive.css" />
<link rel="stylesheet" href="assets/css/슬라이드.css" />
<link rel="stylesheet" href="assets/css/rental.css" />
<!---->


<script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>
<body data-spy="scroll" data-target=".navbar-collapse">


	<!-- Preloader -->
	<div id="loading">
		<div id="loading-center">
			<div id="loading-center-absolute">
				<div class="object" id="object_one"></div>
				<div class="object" id="object_two"></div>
				<div class="object" id="object_three"></div>
				<div class="object" id="object_four"></div>
			</div>
		</div>
	</div>
	<!--End off Preloader -->


	<div class="culmn">
		<!--Home page style-->


		<nav class="navbar navbar-default bootsnav navbar-fixed">


			<!-- Start Top Search -->
			<div class="top-search">
				<div class="container">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-search"></i></span>
						<input type="text" class="form-control" placeholder="Search">
						<span class="input-group-addon close-search"><i
							class="fa fa-times"></i></span>
					</div>
				</div>
			</div>
			<!-- End Top Search -->


			<div class="container">
				<!-- <div class="attr-nav">
                        <ul>
                            <li class="search"><a href="#"><i class="fa fa-search"></i></a></li>
                        </ul>
                    </div> -->

				<!-- Start Header Navigation -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#navbar-menu">
						<i class="fa fa-bars"></i>
					</button>
					<a class="navbar-brand" href="메인.html"> <img
						src="assets/images/bluelogo.png" class="logo" alt=""> <!-- <a>FLIGHT</a> -->
						<!--<img src="assets/images/footer-logo.png" class="logo logo-scrolled" alt="">-->
					</a>

				</div>
				<!-- End Header Navigation -->

				<!-- navbar menu -->
				<div class="collapse navbar-collapse" id="navbar-menu">
					<ul class="nav navbar-nav navbar-right">
						<c:choose>
								<c:when test="${empty loginMember}">
                            		<li><a href="./index.html">Home</a></li>                    
									<li><a href="./로그인.html">로그인</a></li>
                            		<li><a href="./회원가입.html">회원가입</a></li>
								</c:when>
								<c:otherwise>
									<% System.out.println("로그인했음!"); %>
									<li><a href="./index.html">Home</a></li>
                            		<li><a href="./마이페이지.html">마이페이지</a></li>
									<li><a href="./LogoutCon.html">로그아웃</a></li>									
							</c:otherwise>				
						</c:choose>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>

		</nav>

		<!--Home Sections-->



		<section class="match_container">
			<div class="main--match--container">
				<div id="dateNav" class="sub-header" style="padding-bottom: 10px;">
					<div class="mat-re">
						<span id="m1"> <a href="메인.jsp">매치</a> <a href="Rental.jsp"
							id="m2">구장 예약</a>
						</span>
					</div>
					<!---->
					<div class="slidebox">
						<input type="radio" name="slide" id="slide01" checked> <input
							type="radio" name="slide" id="slide02"> <input
							type="radio" name="slide" id="slide03"> <input
							type="radio" name="slide" id="slide04">
						<ul class="slidelist">
							<li class="slideitem" id="dayCon1"></li>
							<li class="slideitem" id="dayCon2"></li>
						</ul>
						<div class="slide-control">
							<div class="control01">
								<label for="slide04" class="prev"></label> <label for="slide02"
									class="next"></label>
							</div>
							<div class="control02">
								<label for="slide01" class="prev"></label> <label for="slide03"
									class="next"></label>
							</div>
							<div class="control03">
								<label for="slide02" class="prev"></label> <label for="slide04"
									class="next"></label>
							</div>
							<div class="control04">
								<label for="slide03" class="prev"></label> <label for="slide01"
									class="next"></label>
							</div>
						</div>
					</div>
					<div class="main__filter">
						<div class="main--match--filter">
							<div class="filter--wrapper">
								<div class="placelist">

									<div>
										<select name="select" class="select-c"
											style="font-size: 15px;">
											<option>내 지역</option>
											<option>서구</option>
											<option>북구</option>
											<option>남구</option>
											<option>동구</option>
											<option>광산구</option>
										</select> <select name="select" class="select-lv"
											style="font-size: 15x;">
											<option>레벨 선택</option>
											<option>비기너 이상</option>
											<option>루키 이상</option>
											<option>주니어 이상</option>
											<option>시니어 이상</option>
											<option>프로 이상</option>
											<option>플라이트</option>
										</select>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
				<!--match list-->
				<div id="list" class="list--match-schedule--container">
					<ul>

						<%
						//경기장 정보 모두 불러오기
						// 경기장 시작, 끝나는 시간 이용해서 시간표 작성  ---끝---
						// 경기장과 시간정보 불러온게 [0] ==> 전부다 for문 ---끝---
						// 년,월,일,경기장,시간 정보 보내기
						// matching 완료 여부 확인하고 일치하는 시간 회색
						// 평일인지 주말인지에 따라 다른 컬럼 가져오기
						PLACE_INFODAO dao = new PLACE_INFODAO();
						List<PLACE_INFO> PlaceList = dao.PlaceAll();
						pageContext.setAttribute("PlaceList", PlaceList);
						%>

						<c:forEach var="plt" items="${PlaceList}" varStatus="status">
						<%
						PLACE_INFO place = (PLACE_INFO) pageContext.getAttribute("plt");
						String place_name = place.getPLACE_NAME();
						
						%>
							<li>
								<div>
									<p>
									<h3 id="getPName"><%=place_name%></h3>
									</p>

									<div class="plc-in">
										<a style="font-size: medium;">구장</a> <a
											style="font-size: small;">규격</a>
										<button class="place-info">
											<a href="#" class="pi-bnt">경기장정보</a>
										</button>

									</div>
									<div class="time-mem">
										<div href="결제.html" class="time1">
											<%
											
											int start = Integer.valueOf(place.getWEEK_SRT()).intValue();
											int end = Integer.valueOf(place.getWEEK_END()).intValue();
											while (true) {
												int start2 = start + 2;
											%>
											<a type=button id="getTime" class='t1'><%=start%>:00 ~ <%=start2%>:00</a>
											<%
											start += 2;
											if (start >= end) {
												break;
											}
											}
											%>



										</div>
									</div>
								</div>
							</li>
						</c:forEach>



						<li>
							<div>
								<p>
								<h3>광주 배드민턴장</h3>
								</p>
								<div class="plc-in">
									<a style="font-size: medium;">구장</a> <a
										style="font-size: small;">규격</a>
									<button class="place-info">
										<a href="#" class="pi-bnt">경기장정보</a>
									</button>

								</div>
								<div class="time-mem">
									<div href="결제.html" class="time1">
										<a class="t1">09:00 ~ 11:00</a> <a class="t1">12:00 ~
											14:00</a> <a class="t1">15:00 ~ 17:00</a> <a class="t1">18:00
											~ 20:00</a> <a class="t1">20:00 ~ 22:00</a> <a id="t2">22:00
											~ 24:00</a>
									</div>
								</div>
							</div>
						</li>


						<li>
							<div>
								<p>
								<h3>광주 배드민턴장</h3>
								</p>
								<div class="plc-in">
									<a style="font-size: medium;">구장</a> <a
										style="font-size: small;">규격</a>
									<button class="place-info">
										<a href="#" class="pi-bnt">경기장정보</a>
									</button>

								</div>
								<div class="time-mem">
									<div href="결제.html" class="time1">
										<a class="t1">09:00 ~ 11:00</a> <a class="t1">12:00 ~
											14:00</a> <a class="t1">15:00 ~ 17:00</a> <a class="t1">18:00
											~ 20:00</a> <a class="t1">20:00 ~ 22:00</a> <a id="t2">22:00
											~ 24:00</a>
									</div>
								</div>
							</div>
						</li>


						<li>
							<div>
								<p>
								<h3>광주 배드민턴장</h3>
								</p>
								<div class="plc-in">
									<a style="font-size: medium;">구장</a> <a
										style="font-size: small;">규격</a>
									<button class="place-info">
										<a href="#" class="pi-bnt">경기장정보</a>
									</button>

								</div>
								<div class="time-mem">
									<div href="결제.html" class="time1">
										<a class="t1">09:00 ~ 11:00</a> <a class="t1">12:00 ~
											14:00</a> <a class="t1">15:00 ~ 17:00</a> <a class="t1">18:00
											~ 20:00</a> <a class="t1">20:00 ~ 22:00</a> <a id="t2">22:00
											~ 24:00</a>
									</div>
								</div>
							</div>
						</li>



					</ul>
				</div>
			</div>
		</section>



		<footer id="contact" class="footer action-lage bg-black p-top-80">
			<!--<div class="action-lage"></div>-->
			<div class="container">
				<div class="row">
					<div class="widget_area">
						<div class="col-md-3">
							<div class="widget_item widget_about">
								<h5 class="text-white">About Us</h5>
								<p class="m-top-20">Lorem ipsum dolor sit amet consec tetur
									adipiscing elit nulla aliquet pretium nisi in cursus maecenas
									nec eleifen.</p>
								<div class="widget_ab_item m-top-30">
									<div class="item_icon">
										<i class="fa fa-location-arrow"></i>
									</div>
									<div class="widget_ab_item_text">
										<h6 class="text-white">Location</h6>
										<p>123 suscipit ipsum nam auctor mauris dui, ac
											sollicitudin mauris, Bandung</p>
									</div>
								</div>
								<div class="widget_ab_item m-top-30">
									<div class="item_icon">
										<i class="fa fa-phone"></i>
									</div>
									<div class="widget_ab_item_text">
										<h6 class="text-white">Phone :</h6>
										<p>+1 2345 6789</p>
									</div>
								</div>
								<div class="widget_ab_item m-top-30">
									<div class="item_icon">
										<i class="fa fa-envelope-o"></i>
									</div>
									<div class="widget_ab_item_text">
										<h6 class="text-white">Email Address :</h6>
										<p>youremail@mail.com</p>
									</div>
								</div>
							</div>
							<!-- End off widget item -->
						</div>
						<!-- End off col-md-3 -->

						<div class="col-md-3">
							<div class="widget_item widget_latest sm-m-top-50">
								<h5 class="text-white">Latest News</h5>
								<div class="widget_latst_item m-top-30">
									<div class="item_icon">
										<img src="assets/images/ltst-img-1.jpg" alt="" />
									</div>
									<div class="widget_latst_item_text">
										<p>Lorem ipsum dolor sit amet, consectetur</p>
										<a href="">21<sup>th</sup> July 2016
										</a>
									</div>
								</div>
								<div class="widget_latst_item m-top-30">
									<div class="item_icon">
										<img src="assets/images/ltst-img-2.jpg" alt="" />
									</div>
									<div class="widget_latst_item_text">
										<p>Lorem ipsum dolor sit amet, consectetur</p>
										<a href="">21<sup>th</sup> July 2016
										</a>
									</div>
								</div>
								<div class="widget_latst_item m-top-30">
									<div class="item_icon">
										<img src="assets/images/ltst-img-3.jpg" alt="" />
									</div>
									<div class="widget_latst_item_text">
										<p>Lorem ipsum dolor sit amet, consectetur</p>
										<a href="">21<sup>th</sup> July 2016
										</a>
									</div>
								</div>
							</div>
							<!-- End off widget item -->
						</div>
						<!-- End off col-md-3 -->

						<div class="col-md-3">
							<div class="widget_item widget_service sm-m-top-50">
								<h5 class="text-white">Latest News</h5>
								<ul class="m-top-20">
									<li class="m-top-20"><a href=""><i
											class="fa fa-angle-right"></i> Web Design</a></li>
									<li class="m-top-20"><a href=""><i
											class="fa fa-angle-right"></i> User Interface Design</a></li>
									<li class="m-top-20"><a href=""><i
											class="fa fa-angle-right"></i> E- Commerce</a></li>
									<li class="m-top-20"><a href=""><i
											class="fa fa-angle-right"></i> Web Hosting</a></li>
									<li class="m-top-20"><a href=""><i
											class="fa fa-angle-right"></i> Themes</a></li>
									<li class="m-top-20"><a href=""><i
											class="fa fa-angle-right"></i> Support Forums</a></li>
								</ul>
							</div>
							<!-- End off widget item -->
						</div>
						<!-- End off col-md-3 -->

						<div class="col-md-3">
							<div class="widget_item widget_newsletter sm-m-top-50">
								<h5 class="text-white">Newsletter</h5>
								<form class="form-inline m-top-30">
									<div class="form-group">
										<input type="email" class="form-control"
											placeholder="Enter you Email">
										<button type="submit" class="btn text-center">
											<i class="fa fa-arrow-right"></i>
										</button>
									</div>

								</form>
								<div class="widget_brand m-top-40">
									<a href="" class="text-uppercase">Your Logo</a>
									<p>Lorem ipsum dolor sit amet consec tetur adipiscing elit
										nulla aliquet pretium nisi in</p>
								</div>
								<ul class="list-inline m-top-20">
									<li>- <a href=""><i class="fa fa-facebook"></i></a></li>
									<li><a href=""><i class="fa fa-twitter"></i></a></li>
									<li><a href=""><i class="fa fa-linkedin"></i></a></li>
									<li><a href=""><i class="fa fa-google-plus"></i></a></li>
									<li><a href=""><i class="fa fa-behance"></i></a></li>
									<li><a href=""><i class="fa fa-dribbble"></i></a> -</li>
								</ul>

							</div>
							<!-- End off widget item -->
						</div>
						<!-- End off col-md-3 -->
					</div>
				</div>
			</div>
			<div
				class="main_footer fix bg-mega text-center p-top-40 p-bottom-30 m-top-80">
				<div class="col-md-12">
					<p class="wow fadeInRight" data-wow-duration="1s">
						<!-- Made with  -->
						<i class="fa fa-heart"></i>
						<!-- by  -->
						<a target="_blank" href="http://bootstrapthemes.co">FLIGHT</a>
						<!-- 2016. All Rights Reserved -->
					</p>
				</div>
			</div>
		</footer>




	</div>

	<!-- JS includes -->

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
	<script src="assets/js/placelist.js"></script>



	<script>
		let week = new Array('일', '월', '화', '수', '목', '금', '토');

		let dayList = []
		let dateList = []
		let monthList = []
		let yearList = []

		let today = new Date();
		let year = today.getFullYear()
		let month = today.getMonth() + 1
		let Day = today.getDay()
		let todayLabel = week[Day];
		yearList.push(year)
		monthList.push(month)
		dateList.push(today.getDate())
		dayList.push(todayLabel)

		for (let i = 1; i < 14; i++) {
			today.setDate(today.getDate() + 1);
			year = today.getFullYear()
			month = today.getMonth() + 1
			let Day = today.getDay()
			let todayLabel = week[Day];
			yearList.push(year)
			monthList.push(month)
			dateList.push(today.getDate())
			dayList.push(todayLabel)
		}

		//1페이지 날짜
		let dayCon1 = document.querySelector('#dayCon1');
		let html1 = '';
		for (let i = 0; i < 7; i++) {
			html1 += '<button class="pt1"><span class="t3">' + yearList[i]
					+ '</span><span class="t3">' + monthList[i]
					+ '</span><div class="pt1-text">' + dateList[i]
					+ '</div><div class="pt1-text">' + dayList[i]
					+ '</div></button>';
		}
		dayCon1.innerHTML = html1;

		//2페이지 날짜
		let dayCon2 = document.querySelector('#dayCon2');
		let html2 = '';
		for (let i = 7; i < 14; i++) {
			html2 += '<button class="pt1"><span class="t3">' + yearList[i]
					+ '</span><span class="t3">' + monthList[i]
					+ '</span><div class="pt1-text">' + dateList[i]
					+ '</div><div class="pt1-text">' + dayList[i]
					+ '</div></button>';
		}

		dayCon2.innerHTML = html2;

		let date = ''
		let day = ''
		//Date 값 불러오기
		$(document).on('click', '.pt1', function() {
			year = $(this).children(':nth-child(1)').text();
			month = $(this).children(':nth-child(2)').text();
			date = $(this).children(':nth-child(3)').text();
			day = $(this).children(':nth-child(4)').text();
			//Ajax방식으로 날짜데이터를 서버에      
			// 전송해서 해당 날짜에 예약한 경기리스트를 요청      
			//해당 날짜에 예약한 경기목록   

		})

		// 클릭한 시간, 클릭 상위 요소의 경기장이름
		$(document).on('click', '#getTime', function() {
			let time = $(this).text();
			let place = $(this).parent().parent().siblings('#getPName').text();
			console.log(year)
			console.log(month)
			console.log(date)
			console.log(place)
			console.log(time)

			/* let url = 'testCon?year=' + encodeURI(year) + '&month='
					+ encodeURI(month) + '&date=' + encodeURI(date)
					+ '&place=' + encodeURI(place) + '&time='
					+ encodeURI(time) */

					
			var url = 'testCon';
			var obj = {
					year    : year,
					month : month,
					date : date,
					place : place,
					time : time
			    	};
			
			const queryStr = new URLSearchParams(obj).toString();
			window.location = url +'?' +queryStr;
			
			//window.location = url +'?' + $.param(obj);

			
			/* 			window.location = 'testCon?' + 
			            '&year=' + year +
			            '&month=' + month +
			            '&date=' + date +
			            '&place=' + place +
			            '&time=' + time; */
			


		})
	</script>


</body>
</html>