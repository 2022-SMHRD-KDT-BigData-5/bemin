<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->
<head>
<meta charset="utf-8">
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
					<a class="navbar-brand" href="./RealMain.jsp"> <img
						src="assets/images/logo1.png" class="logo" alt=""> <!-- <a>FLIGHT</a> -->
						<!--<img src="assets/images/footer-logo.png" class="logo logo-scrolled" alt="">-->
					</a>

				</div>
				<!-- End Header Navigation -->

				<!-- navbar menu -->
				<div class="collapse navbar-collapse" id="navbar-menu">
					<ul class="nav navbar-nav navbar-right">
						<c:choose>
							<c:when test="${empty loginMember}">
								<li><a href="./Login.jsp">로그인</a></li>
								<li><a href="./join.jsp">회원가입</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="LogoutCon">로그아웃</a></li>
								<li><a href="joinUpdate.jsp">회원정보수정</a></li>
								<li><a href="Mypage.jsp">마이페이지</a></li>
							</c:otherwise>
						</c:choose>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>

		</nav>

		<!--Home Sections-->

		<section id="home" class="home bg-black fix">
			<div class="overlay"></div>
			<div class="container">
				<div class="row">
					<div class="main_home text-center">
						<div class="col-md-12">
							<div class="hello_slid">
								<div class="slid_item">
									<div class="home_text ">
										<h2 class="text-white">
											Welcome to <strong>Made</strong>
										</h2>
										<h1 class="text-white">We Do Business All Of Time</h1>
										<h3 class="text-white">
											- We Create a <strong>Concept</strong> into The Market -
										</h3>
									</div>

									<div class="home_btns m-top-40">
										<a href="" class="btn btn-primary m-top-20">Buy Now</a> <a
											href="" class="btn btn-default m-top-20">Take a Tour</a>
									</div>
								</div>
								<!-- End off slid item -->
								<div class="slid_item">
									<div class="home_text ">
										<h2 class="text-white">
											Welcome to <strong>Made</strong>
										</h2>
										<h1 class="text-white">We Do Business All Of Time</h1>
										<h3 class="text-white">
											- We Create a <strong>Concept</strong> into The Market -
										</h3>
									</div>

									<div class="home_btns m-top-40">
										<a href="" class="btn btn-primary m-top-20">Buy Now</a> <a
											href="" class="btn btn-default m-top-20">Take a Tour</a>
									</div>
								</div>
								<!-- End off slid item -->
								<div class="slid_item">
									<div class="home_text ">
										<h2 class="text-white">
											Welcome to <strong>Made</strong>
										</h2>
										<h1 class="text-white">We Do Business All Of Time</h1>
										<h3 class="text-white">
											- We Create a <strong>Concept</strong> into The Market -
										</h3>
									</div>

									<div class="home_btns m-top-40">
										<a href="" class="btn btn-primary m-top-20">Buy Now</a> <a
											href="" class="btn btn-default m-top-20">Take a Tour</a>
									</div>
								</div>
								<!-- End off slid item -->
							</div>
						</div>

					</div>


				</div>
				<!--End off row-->
			</div>
			<!--End off container -->
		</section>
		<!--End off Home Sections-->


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
							type="radio" name="slide" id="slide02">
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
									<select name="select" class="select-c">
										<option>내 지역</option>
										<option>서구</option>
										<option>북구</option>
										<option>남구</option>
										<option>동구</option>
										<option>광산구</option>
									</select> <select name="select" class="select-c">
										<option>레벨</option>
										<option>루키</option>
										<option>비기너</option>
										<option>주니어</option>
										<option>시니어</option>
										<option>프로</option>
										<option>플라이트</option>
									</select>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--match list-->
				<div id="list" class="list--match-schedule--container">
					<ul>
					
					
						<li class="list--match-schedule--item">
							<a href="참가.html">
								<div class="list--match-schedule__time">
									<p>18:00</p>
								</div>
								<div class="list--match-schedule__status">
									<div class="match-status__join">
										<p>참가하기</p>
									</div>
								</div>
								<div class="list--match-schedule__info">
									<div class="match-list__title">
										<h3>HM풋살파크 인천 청라점 *주차15자리*</h3>
									</div>
									<div class="label--match-option">
										<span class="match--option isMix">남녀모두</span> <span>1vs1</span>
										<span>모든 레벨</span>
									</div>
								</div>
							</a>
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
								<p class="m-top-20"></p>
								<div class="widget_ab_item m-top-30">
									<div class="item_icon">
										<i class="fa fa-location-arrow"></i>
									</div>
									<div class="widget_ab_item_text">
										<h6 class="text-white">Location</h6>
										<p>광주 동구 예술길 31-15 4층</p>
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
										<p>FLIGHT@flight.com</p>
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
								<h5 class="text-white">Shortcut</h5>
								<ul class="m-top-20">
									<li class="m-top-20"><a href=""><i
											class="fa fa-angle-right"></i> 매치</a></li>
									<li class="m-top-20"><a href=""><i
											class="fa fa-angle-right"></i> 구장 예약</a></li>
									<li class="m-top-20"><a href=""><i
											class="fa fa-angle-right"></i> 마이페이지</a></li>
									<li class="m-top-20"><a href=""><i
											class="fa fa-angle-right"></i> 회원가입</a></li>
									<li class="m-top-20"><a href=""><i
											class="fa fa-angle-right"></i> 로그인</a></li>
									<li class="m-top-20"><a href=""><i
											class="fa fa-angle-right"></i> 티어, 매너 안내</a></li>
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
									<a href="" class="text-uppercase"><img
										src="assets/images/logo1.png" class="logo" alt=""></a>
									<p>배드민턴치고 싶을 땐 플라이트</p>
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

		$(document).ready(function() {
			document.querySelector('.pt1').click();
		})

		$(document).on('click', '.pt1', function() {

			$('#list').children('ul').remove();
			year = $(this).children(':nth-child(1)').text();
			month = $(this).children(':nth-child(2)').text();
			date = $(this).children(':nth-child(3)').text();
			day = $(this).children(':nth-child(4)').text();
			//Ajax방식으로 날짜데이터를 서버에      
			// 전송해서 해당 날짜에 예약한 경기리스트를 요청      
			//해당 날짜에 예약한 경기목록   
			rentalDay = year + '-' + month + '-' + date
			console.log(rentalDay)

			$.ajax({
				method : 'get',
				url : 'rentalDayCon',
				data : {
					'rentalDay' : rentalDay,
				},
				dataType : 'json',
				success : function(data) {
					let table='';
					for(let i=0;i<data.length;i++){
						
						table += '<li class="list--match-schedule--item">';
						table += '<a class="mat">';
						table += '<div class="list--match-schedule__time">';
						table += '<p>'+data[i].RES_TIME+'</p></div>';
						table += '<div class="list--match-schedule__status">';
						table += '<div class="match-status__join">';
						table += '<p>참가하기</p></div></div>';
						table += '<div class="list--match-schedule__info">';
						table += '<div class="match-list__title">';
						table += '<h3>'+data[i].RES_PLACE+'</h3></div>';
						table += '<div class="label--match-option">';
						table += '<span class="match--option isMix">'+data[i].GENDER+' |</span>';
						table += '<span> '+data[i].UNIT+' |</span><span> '+data[i].MAT_MEMBER+'인 |</span><span> 매너 점수 '+data[i].STN_MANNER+'이상 |</span>';
						table += '<span> 티어 점수'+data[i].STN_TIER+'이상 </span><span id="Wang">'+data[i].MAT_NO+'</span></div></div></a></li>';
					}
					console.log(data)
					$('#list').children('ul').append(table);
				},
				error : function() {
					console.log('응답 실패')
				}
			})

		})
		
		$(document).on('click', '.mat', function() {
			let matno = $(this).children(':nth-child(3)').children(':nth-child(2)').children('#Wang').text();
			
			var url = 'MatchingPageCon';
			var obj = {
					matno : matno
			};
		
		
			const queryStr = new URLSearchParams(obj).toString();
			window.location = url + '?' + queryStr;
		
		
		
		})
		
	</script>

</body>
</html>
