<%@page import="com.smhrd.domain.MATCHING"%>
<%@page import="com.smhrd.domain.USER_INFO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
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
<link rel="stylesheet" href="assets/css/modal.css">


<link rel="stylesheet" href="assets/css/style.css">

<link rel="stylesheet" href="assets/css/responsive.css" />

<script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>

<body data-spy="scroll" data-target=".navbar-collapse">

	<%
	// 경기장 예약 ==> 결제페이지  컨트롤러
	// 컨트롤러 기능

	// 경기장 예약 페이지에서 날짜,경기장,시간 정보 가져오기(matching 타입 세션)(예약->결제로 가져올 생성자)
	// user_info에서 로그인한 아이디 캐시정보 가져오기(세션)
	// 선택한 경기장의 요금 정보 가져와야함

	// - 예약 페이지에서 날짜,경기장,시간 정보 가져올수 있음
	// - 결제 페이지에 경기장 정보 보낼 수 있음
	MATCHING placeInfo = (MATCHING) session.getAttribute("placeInfo");
	pageContext.setAttribute("placeInfo", placeInfo);

	//USER_INFO에서 로그인한 세션 받아오기(캐시)
	USER_INFO loginMember = (USER_INFO) session.getAttribute("loginMember");
	pageContext.setAttribute("loginMember", loginMember);

	//leftCash 잔액 정보 로그인에 업데이트 해야함

	// 결제페이지 ==> 완료 페이지 컨트롤러
	// 로그인세션 정보로 가져와서 남은 캐시 정보 user_info에 업데이트
	// 이 페이지에서 matching 테이블에 insert할 데이터들은
	// 날짜, 경기장, 시간 ==> 세션으로 값 가져오기
	// 개설자(세션 로그인 아이디), '개인or단체','남or여','티어','매너','인원 2or4' 정보 가져오기
	// 해당 정보들 insert ()

	//웹 요청사항
	//예약 내역 밑에 "원하는 매칭 상대" '개인or단체','남or여','티어','매너','인원 2or4'
	// 티어는 체크박스 형태로 6단계 보여주기가 나을듯? 고민해봐야함
	// 매너는 'x점 이상' 으로 선택하는데 x점을 select 할지 체크박스 할지 고민해봐야할듯
	%>

	<div class="fom">
		<div class="logoName">
			<a href="main.jsp"><h1>플라이트</h1></a>
		</div>
		<div class="content_wrap">
			<div class="content_header">
				<div class="content-header_base">
					<div class="content-header_title">
						<h2 style="text-align: center;">예약내역</h2>
						<br>
						<h3 style="font-weight: 400;">${placeInfo.place}</h3>
						<br>
						<h4 style="font-weight: 400;">${placeInfo.date}</h4>
						<br>
						<h4 style="font-weight: 400;">${placeInfo.time}</h4>
						<br>
						<div>
							<button id="show">예약설정</button>
						</div>
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
										<p id="myCash">10000</p>
										<input type="text" name="useCash" id="inputCash" style="width: 80px;"  value="금액 입력" onfocus="this.value=''" />
										원
										<br><button type="button"
											src="https://plab-football.s3.amazonaws.com/static/img/ic_arrow_right.svg"
											id="useCash" style="margin-top: 10px">적용</button>
									</div>
									</p>
									<div style="text-align: right; padding-bottom: 20px;">
										<span style="color: rgb(159, 177, 189); font-size: 12px;">
											잔액 </span> <span id="leftCash" name="leftCash"> </span> <span
											style="color: rgb(159, 177, 189); font-size: 12px;"> 원
										</span>
									</div>
								</div>
							</div>
						</div>
					</section>

					<section>
						<div class="section_title">
							<h4 style="text-align: left">🚩결제</h4>

							<div class="section_body">
								<div class="recipt">
									<ul class="recipt-list" style="text-align: right;">
										<li class="recipt-list_item"><strong>이용 금액</strong> <strong
											id="usePrice">5000</strong></li>
										<!---->
										<!---->
										<!---->
									</ul>
									<div class="recipt-payment" style="text-align: right;">
										<div class="recipt-list_label">결제 금액</div>
										<div id="leftPrice" class="recipt-list_value">5000</div>
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
									<button id="flex"><a href="PayFin.jsp" style="color: white;">결제하기</a></button>
								</div>
							</div>
						</div>
						
						<div class="background">
					<div class="window">
						<div class="popup">

							<button id="close">
								<a href="#" class="close-x">X</a>
							</button>

							<div class="modal-in">


								<br>


								<div style="margin: 0 auto;">
									<p class="gen-cl">성별</p>
									<input type="radio" name="gender">남 <input type="radio"
										name="gender">녀 <input type="radio" name="gender">무관
								</div>

								<br>


								<div>
									<p class="per-cl">인원</p>
									<input type="radio" name="per">2인 
                                    <input type="radio"name="per">4인
								</div>
								<br>
								<div>
									<input type="radio" name="age">개인 
                                    <input type="radio"name="age">단체
								</div>
								<br>
								<div style="color: black;">
									<!-- <p style="margin-left: 26px;">티어</p>	 -->
									<select class="tire-op">
										<option>티어</option>
										<option>루키</option>
										<option>비기너</option>
										<option>주니어</option>
										<option>시니어</option>
										<option>프로</option>
										<option>플라이트</option>
									</select>
								</div>


								<br>

								<div style="color: black;">
									<!-- <p style="margin-left: 10px;">매너온도</p> -->
									<select class="tire-manner">
										<option>매너점수</option>
										<option>상관없음</option>
										<!-- <option>0</option> -->
										<option>20 이상</option>
										<option>40 이상</option>
										<option>60 이상</option>
										<option>80 이상</option>
										<option>100</option>
									</select>
								</div>
							</div>

							<div class="move-tire"></div>

							<div style="margin: 10px 5px 10px 10px;">
								<input id="sub_bt" type="submit" value="적용">
							</div>

						</div>
					</div>
                </div>
            </div>
        </div>
	
	    
	    <script src="assets/js/vendor/jquery-1.11.2.min.js"></script>
        <script src="assets/js/vendor/bootstrap.min.js"></script>

        <script src="assets/js/jquery.magnific-popup.js"></script>
        <script src="assets/js/jquery.easing.1.3.js"></script>
        <script src="assets/css/slick/slick.js"></script>
        <script src="assets/css/slick/slick.min.js"></script>
        <script src="assets/js/jquery.collapse.js"></script>
        <script src="assets/js/bootsnav.js"></script>



        <script src="assets/js/plugins.js"></script>
        <script src="assets/js/main.js"></script>
	<!--캐시 입력 사용  -->
	<script>
	
	</script>
	<script>
		//버튼
		let useCash = document.querySelector('#useCash');
		//입력 캐시
		let inputCash = document.querySelector('#inputCash');
		//내 캐시
		let myCash = document.querySelector('#myCash');
		//내 캐시 - 입력캐시
		let leftCash = document.querySelector('#leftCash');

		//요금
		let usePrice = document.querySelector('#usePrice');
		//요금 - 입력캐시
		let leftPrice = document.querySelector('#leftPrice');
		

		//캐시 계산
		useCash.addEventListener('click', function() {

			let txt1 = Number(inputCash.value)
			let txt2 = Number(myCash.innerHTML)
			let txt3 = Number(usePrice.innerHTML)
			//내가 가진 캐시보다 많으면 X 경기장 요금보다 캐시입력값이 많으면X
			if (txt1 <= txt3 & txt1 <= txt2) {
				leftCash.innerHTML = Number(myCash.innerHTML)
						- Number(inputCash.value);
				leftPrice.innerHTML = Number(usePrice.innerHTML)
						- Number(inputCash.value);
			}
			
			
			if (txt1 > txt3) {
				leftCash.innerHTML = Number(myCash.innerHTML)
						- Number(usePrice.innerHTML);
				leftPrice.innerHTML = 0
			}
			if (txt1 > txt2) {
				alert("캐시 보유 금액이 부족합니다")
				return false
			}

		});
	</script>
	<script>
 		$("#inputCash").keyup(function() {
			chk_input_filter("number", $("#inputCash"));
		});

		function chk_input_filter(type, obj) {

			var str = $(obj).val();

			if (type == 'number') {
				//숫자만 허용
				$(obj).val(str.replace(/[^0-9]/gi, ""));
			}
		}
	</script>


	<script>
	// onkeyup="inputNumberFormat(this)"
	
	 /* function inputNumberFormat(obj) {
	     obj.value = comma(uncomma(obj.value));
	 }

	 function comma(str) {
	     str = String(str);
	     return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
	 }

	 function uncomma(str) {
	     str = String(str);
	     return str.replace(/[^\d]+/g, '');
	 }*/
	</script>
	
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