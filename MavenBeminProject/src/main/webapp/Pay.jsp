<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>

<body data-spy="scroll" data-target=".navbar-collapse">

	<form class="fom">
		<div class="logoName">
			<a href="main.jsp"><h1>플라이트</h1></a>
		</div>
		<div class="content_wrap">
			<div class="content_header">
				<div class="content-header_base">
					<div class="content-header_title">
						<h2 style="text-align: center;">예약내역</h2>
						<br>
						<h3 style="font-weight: 400;">구장</h3>
						<br>
						<h4 style="font-weight: 400;">요일</h4>
						<br>
						<h4 style="font-weight: 400;">시간</h4>
						<br>
					</div>
				</div>
			</div>

			<!-- 캐시 -->
			<div class="content_body" style="padding-bottom: 0px;">
				<div class="content-body_wrap">
					<section>
						<div class="section_body">
							<div class="recipt">
								<!---->
								<p class="list_menu">
								<div class="list-left" style="margin-bottom: 2%;">
									<h4 style="text-align: left">🚩캐시</h4>

									<div class="list-right">
										<h5>0원 사용</h5>
										<img
											src="https://plab-football.s3.amazonaws.com/static/img/ic_arrow_right.svg">
									</div>
									</p>
									<div style="text-align: right; padding-bottom: 20px;">
										<span style="color: rgb(159, 177, 189); font-size: 12px;">잔액
											0원</span>
									</div>
								</div>
							</div>
						</div>
					</section>

					<section>
						<div class="section_title" >
							<h4 style="text-align: left">🚩결제</h4>

							<div class="section_body">
								<div class="recipt">
									<ul class="recipt-list" style="text-align: right;">
										<li class="recipt-list_item"><strong>이용 금액</strong> <strong>0원</strong>
										</li>
										<!---->
										<!---->
										<!---->
									</ul>
									<div class="recipt-payment" style="text-align: right;">
										<div class="recipt-list_label">추가 결제 금액</div>
										<div class="recipt-list_value">0원</div>
									</div>
								</div>
							</div>
						</div>
					</section>

				
					<section class="pay_c">
						<div class="section_title_1">
							<h4 style="text-align: left;">🚩결제 수단</h4>
						</div>
						<div class="section_body">
							<div class="list">
								<ul>
									<li class="list_radio"><input type="radio" id="HjPay"
										value="" name="HjPay"> <label for="kakaoPay">
											<span>
												<p id="payM">계좌이체</p>
										</span>

									</label></li>
								</ul>
							</div>
						</div>
					</section>

					<!-- 주의사항 -->
					<section>
						<div class="section_body" style="text-align: center;">
							<div class="accordion-list">
								<ul>
									<li class="accordion_item">
										<div class="accordion-item_title">
											<h4>✔이것만은 꼭!</h4>
										</div>
										<div style="text-align: left;">
											<p>
												"운동화(실내화) 이외에는 어떠한 신발(구두, 캐주얼화, 작업화 등)도 착용을 금합니다. (체육관 바닥의
												손상과 부상의 위험이 있습니다.)" <br> <br> "절대 금연 및 금주, 취사 취식
												불가입니다. (간단한 음료는 가능합니다. 쓰레기가 방치되지 않도록 주의해주세요.)" <br> <br>
												"어린이 동행 시는 부모가 안전사고외 모든 것을 책임집니다." <br> <br> "시설
												내에 동물 동반을 절대 금합니다." <br> <br> "체육관 바닥 유지관리 및 보존에
												의무를 다합니다. (라인 생성은 자제해주세요.)" <br> <br> "이용자의 부주의로
												시설을 파손하면, 손해배상을 청구할 수 있습니다. 이 점 유의해 주세요."
											</p>
										</div>
									</li>
									<!--환불안내-->
									<li class="accordion_item">
										<div class="accordion-item_title">
											<h4>✔환불 안내</h4>
										</div>
										<div>
											<p style="text-align: left;">
												"매치 당일 3일(72시간) 전까지 100% 환불이 가능합니다. (이후 매치 당일 24시간 전까지 50%
												환불)" <br> <br> "당일 환불은 불가능합니다. (단, 시설 문제로 인한 이용이
												불가능 할 시 100% 환불)" <br> <br>
											</p>
										</div>
									</li>
								</ul>
							</div>
							<!-- 결제 -->
							<div class="content_footer">
								<div class="btn-wrap bottom-fixed">
									<p style="text-decoration: underline">위 내용을 동의하고 결제를 진행합니다.</p>
									<button id="flex">결제하기</button>
								</div>
							</div>
						</div>
	</form>
</body>
</html>