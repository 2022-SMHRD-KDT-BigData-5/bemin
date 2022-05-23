<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
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
<link rel="stylesheet" href="assets/css/로그인.css">

<!--Theme custom css -->
<link rel="stylesheet" href="assets/css/style.css">
<!--<link rel="stylesheet" href="assets/css/colors/maron.css">-->

<!--Theme Responsive css-->
<link rel="stylesheet" href="assets/css/responsive.css" />

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
					<a class="navbar-brand" href="index.html"> <img
						src="assets/images/logo1.png" class="logo" alt=""> <!--<img src="assets/images/footer-logo.png" class="logo logo-scrolled" alt="">-->
					</a>

				</div>
				<!-- End Header Navigation -->


				<!-- navbar menu -->
				<div class="collapse navbar-collapse" id="navbar-menu">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="./index.html">Home</a></li>
						<li><a href="./회원가입.jsp">회원가입</a></li>
						<li><a href="./Login.jsp">로그인</a></li>
						<li><a href="./마이페이지.html">마이페이지</a></li>

					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
		</nav>

	</div>

    <!--Login Sections-->
    <div class="page-container">
        <div class="login-form-container shadow">
            <div class="login-form-right-side">
                <div class="top-logo-wrap"> 
                </div>
                <h1>로그인 페이지 입니다.</h1>
                <p>플라이트</p>
            </div>
            <div class="login-form-left-side">
                <div class="login-top-wrap">
                <form action ="LoginCon" method="post">
                    <span>회원이아니신가요?</span>
                    <button class="create-account-btn shadow-light" href="join.jsp">회원가입</button>
                </div>
                <div class="login-input-container">
                
                    <div class="login-input-wrap input-id">
                        <i class="far fa-envelope"></i>
                        <input placeholder="ID" name="id" type="text">
                    </div>
                    <div class="login-input-wrap input-password">
                        <i class="fas fa-key"></i>
                        <input placeholder="Password" name="pw"  type="password">
                    </div>
                </div>
                
 		
            	
                <div class="login-btn-wrap">
                    <input class="login-btn" id="loginbtn" type="submit" value="로그인" >
                    
                    <a href="Find.jsp" >아이디/비밀번호를 잊으셨나요?</a>
                </form>
                </div>
            </div>
        </div>
    </div>
            
        
	<!-- JS includes -->

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
	<script>
	
	$('#loginbtn').click(function LoginCheck(){
	
		let id=$('#id').val();
		let pw=$('#pw').val();
	$.ajax({
		method:'post',
		url:'LoginCheckCon',
		data:{'id':id,'pw':pw},
		contentType : 'application/json; charset=utf-8',
		dataType : 'text',
		success: function(data){
			if(data=='false'){
				alert('아이디 또는 비밀번호가 일치하지 않습니다!!!!!')
				window.location.href = "LoginCheck.html";
			}else{
				window.location.href = "main.jsp";
			}
		}
		
		})
	
	}
	
	</script>
	
</body>
</html>