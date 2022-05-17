<%@page import="com.smhrd.domain.USER_INFO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->
<html>
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
<link rel="stylesheet" href="assets/css/아이디비번찾기.css">

<!-- xsslider slider css -->


<!--<link rel="stylesheet" href="assets/css/xsslider.css">-->




<!--For Plugins external css-->
<!--<link rel="stylesheet" href="assets/css/plugins.css" />-->

<!--Theme custom css -->
<link rel="stylesheet" href="assets/css/style.css">
<!--<link rel="stylesheet" href="assets/css/colors/maron.css">-->

<!--Theme Responsive css-->
<link rel="stylesheet" href="assets/css/responsive.css" />

<script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


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
					<a class="navbar-brand" href="#brand"> <img
						src="assets/images/logo1.png" class="logo" alt=""> <!--<img src="assets/images/footer-logo.png" class="logo logo-scrolled" alt="">-->
					</a>

				</div>
				<!-- End Header Navigation -->

				<!-- navbar menu -->
				<div class="collapse navbar-collapse" id="navbar-menu">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="./index.html">Home</a></li>
						<li><a href="./회원가입.html">회원가입</a></li>
						<li><a href="./로그인.html">로그인</a></li>
						<li><a href="./마이페이지.html">마이페이지</a></li>
						<!-- <li><a href="#test">Blog</a></li> -->
						<!-- <li><a href="#contact">Contact</a></li> -->
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
		</nav>

		<!--Login Sections-->
		<div class="page-container">
			<div class="find-form-container shadow">
				<div class="find-form-right-side">
					<h3>아이디 찾기</h3>
					<form action="FindCon" method="post">
						<div class="find-input-container">
							<div class="find-input-wrap input-name">
								<i class="far fa-envelope"></i>
								<input placeholder="가입한 이름을 입력하세요." name="name" type="text">
							</div>
							<div class="find-input-wrap input-tel">
								<i class="fas fa-key"></i> 
								<input placeholder="가입한 전화번호를 입력하세요." name="tel" type="number">
							</div>
							<p>'-' 제외하고 입력</p>
						</div>
						<div class="find-btn-wrap">
							<input type="submit" value="아이디찾기" class="find-btn">
						</div>
						<p>'-' 제외하고 입력</p>
					</div>
					<div class="find-btn-wrap">
						<button class="find-btn" onclick="IdCheck()">아이디 찾기</button>
					</div>

					</form>
					<c:choose>
						<c:when test="${empty FindID}">
							<script>alert('없음')</script>
						</c:when>
						<c:otherwise>
							<script>alert('찾음')</script>
						</c:otherwise>
					</c:choose>
				</div>
				<div class="find-form-left-side">
					<h3>비밀번호 찾기</h3>
					<div class="find-input-container">
						<div class="find-input-wrap input-id">
							<i class="far fa-envelope"></i>
							<input placeholder="가입한 아이디를 입력하세요." name="id" type="text">
						</div>
						<div class="find-input-wrap input-name">
							<i class="far fa-envelope"></i> 
							<input placeholder="가입한 이름을 입력하세요." name="name" type="text">
						</div>
						<div class="find-input-wrap input-tel">
							<i class="fas fa-key"></i> 
							<input placeholder="가입한 전화번호를 입력하세요." name="tel" type="number">
						</div>
						<p>'-' 제외하고 입력</p>
					</div>
					<div class="find-btn-wrap">
						<button class="find-btn">비밀번호 찾기</button>
					</div>
				</div>

			</div>
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

		<script type="text/javascript">
<<<<<<< HEAD
=======
		
>>>>>>> branch 'master' of https://github.com/2022-SMHRD-KDT-BigData-5/bemin.git
		</script>


		<script src="assets/js/plugins.js"></script>
		<script src="assets/js/main.js"></script>
</body>
</html>