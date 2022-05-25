<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="favicon.ico">

<link rel="stylesheet" href="assets/css/회원가입.css">
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
<link rel="stylesheet" href="assets/css/회원가입.css">
<link rel="stylesheet" href="assets/css/회원가입레벨.css">

<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/responsive.css" />



</head>
<html lnag="ko">

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

   <!-- 상단바 -->
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
               <a class="navbar-brand" href="RealMain.jsp"> <img
                  src="assets/images/logo1.png" class="logo" alt=""> <!--<img src="assets/images/footer-logo.png" class="logo logo-scrolled" alt="">-->
               </a>

            </div>
            <!-- End Header Navigation -->


            <!-- navbar menu -->
            <div class="collapse navbar-collapse" id="navbar-menu">
               <ul class="nav navbar-nav navbar-right">
                  <li><a href="join.jsp">회원가입</a></li>
                  <li><a href="Login.jsp">로그인</a></li>

               </ul>
            </div>
            <!-- /.navbar-collapse -->
         </div>
      </nav>

   </div>





   <!-- header -->
   <div id="header">
      <img src="./assets/images/logo1.png" id="logo">
   </div>


   <!-- wrapper -->
	<div id="wrapper">

		<!-- content-->
		<div id="content">

			<!-- ID -->
			<div>
				<h3 class="join_title">
				<form action="Join1Con" method="post" name="frm">
					<label for="id">아이디</label>
				</h3>
				<span class="box int_id"> <input type="text" name="id" id="id"
					class="int" maxlength="20"> <span class="step_url">
					<input type="button" value="중복검사" onclick="idCheck()"
					style="color: black;">
						<span id="result"></span></span>
					<!-- 아이디 중복체크 -->
					
				</span> <span class="error_next_box"></span>
			</div>

			<!-- PW1 -->
			<div>
				<h3 class="join_title">
					<label for="pswd1">비밀번호</label>
				</h3>

				

				<span class="box int_pass"> <input type="password" id="pswd1"

					class="int" maxlength="20"> <span id="alertTxt">사용불가</span>
					<img src="./assets/images/m_icon_pass.png" id="pswd1_img1"
					class="pswdImg">
				</span> <span class="error_next_box"></span>
			</div>

			<!-- PW2 -->
			<div>
				<h3 class="join_title">
					<label for="pswd2">비밀번호 재확인</label>
				</h3>

				<span class="box int_pass_check"> <input type="text"
					id="pswd2" name="pw" class="int" maxlength="20"> 



				</span> <span class="error_next_box"></span>
			</div>

			<!-- NAME -->
			<div>
				<h3 class="join_title">
					<label for="name">이름</label>
				</h3>
				<span class="box int_name"> <input type="text" name="name" id="name"
					class="int" maxlength="20">
				</span> <span class="error_next_box"></span>
			</div>

			<!-- BIRTH -->
			<div>
				<h3 class="join_title">
					<label for="yy">생년월일</label>
				</h3>

				<div id="bir_wrap">
					<!-- BIRTH_YY -->
					<div id="bir_yy">
						<span class="box"> <input type="text" id="yy" class="int"
							maxlength="4" placeholder="년(4자)">
						</span>
					</div>

					<!-- BIRTH_MM -->
					<div id="bir_mm">
						<span class="box"> <select id="mm" class="sel">
								<option>월</option>
								<option value="01">1</option>
								<option value="02">2</option>
								<option value="03">3</option>
								<option value="04">4</option>
								<option value="05">5</option>
								<option value="06">6</option>
								<option value="07">7</option>
								<option value="08">8</option>
								<option value="09">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
						</select>
						</span>
					</div>

					<!-- BIRTH_DD -->
					<div id="bir_dd">
						<span class="box"> <input type="text" id="dd" class="int"
							maxlength="2" placeholder="일">
						</span>
					</div>

				</div>
				<span class="error_next_box"></span>
			</div>

			<!-- GENDER -->
			<div>
				<h3 class="join_title">
					<label for="gender">성별</label>
				</h3>
				<span class="box gender_code"> <select id="gender" name="gender"
					class="sel">
						<option>성별</option>
						<option value="남">남자</option>
						<option value="여">여자</option>
				</select>
				</span> <span class="error_next_box">필수 정보입니다.</span>
			</div>

			<!-- EMAIL -->
			<div>
				<h3 class="join_title">
					<label for="email">본인확인 이메일<span class="optional"></span></label>
				</h3>
				<span class="box int_email"> <input type="text" name="email" id="email"
					class="int" maxlength="100" placeholder="이메일 입력">
				</span> <span class="error_next_box">이메일 주소를 다시 확인해주세요.</span>
			</div>

			<!-- MOBILE -->
			<div>
				<h3 class="join_title">
					<label for="phoneNo">휴대전화</label>
				</h3>
				<span class="box int_mobile"> <input type="tel" name="tel" id="mobile"
					class="int" maxlength="16" placeholder="전화번호 입력">
				</span> <span class="error_next_box"></span>
			</div>
			<!-- adress -->
			<div>
				<h3 class="join_title">
					<label for="adress">주소</label>
				</h3>
				<span class="box int_adress"> <input type="text" name="address" id="adress"
					class="int" maxlength="16" placeholder="주소 입력">
				</span> <span class="error_next_box"></span>
			</div>
			
			<div>
                <h3 class="join_title"><label for="slef_evaluation">자기평가</label></h3>
                    
                    <div class="startRadio">
                        <label class="startRadio__box">
                            <input type="radio" name="star" value="50">
                            <span class="startRadio__img"><span class="blind">별 1개</span></span>
                        </label>
                        <label class="startRadio__box">
                            <input type="radio" name="star" value="100">
                            <span class="startRadio__img"><span class="blind">별 1.5개</span></span>
                        </label>
                        <label class="startRadio__box">
                            <input type="radio" name="star" value="150">
                            <span class="startRadio__img"><span class="blind">별 2개</span></span>
                        </label>
                        <label class="startRadio__box">
                            <input type="radio" name="star" value="200">
                            <span class="startRadio__img"><span class="blind">별 2.5개</span></span>
                        </label>
                        <label class="startRadio__box">
                            <input type="radio" name="star" value="250">
                            <span class="startRadio__img"><span class="blind">별 3개</span></span>
                        </label>
                        <label class="startRadio__box">
                            <input type="radio" name="star" value="300">
                            <span class="startRadio__img"><span class="blind">별 3.5개</span></span>
                        </label>
                        <label class="startRadio__box">
                            <input type="radio" name="star" value="350">
                            <span class="startRadio__img"><span class="blind">별 4개</span></span>
                        </label>
                        <label class="startRadio__box">
                            <input type="radio" name="star" value="400">
                            <span class="startRadio__img"><span class="blind">별 4.5개</span></span>
                        </label>
                        <label class="startRadio__box">
                            <input type="radio" name="star" value="450">
                            <span class="startRadio__img"><span class="blind">별 5개</span></span>
                        </label>
                        <label class="startRadio__box">
                            <input type="radio" name="star" value="500">
                            <span class="startRadio__img"><span class="blind">별 5.5개</span></span>
                        </label>
                    </div>
                    
                    <span class="error_next_box"></span>    
                    <div>
                        <img src="./assets/images/레벨가이드.png">
                    </div>
                </div>


			<!-- JOIN BTN-->
			<div class="btn_area">
                    <button type="button" id="btnJoin">
                        <input id="joinsubmit" type="submit" value="가입하기" style="color: white;">
                    </button>
            </div>
			


</form>
		</div>
		<!-- content-->

	</div>
	<!-- wrapper -->
	<!-- JS includes -->

	<script src="assets/js/회원가입.js"></script>
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
	<script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
	
	<script>
	//아이디 체크!!
	
	function idCheck(){
		let id=$('#id').val();
		$.ajax({
			//요청 방식(get/post)
			method:'get',
			//요청 경로(url매핑값)
			url:'IdCheckCon',
			//전송데이터(json)
			data : {'id':id},
			//전송데이터 정보(형식/인코딩방식)
			contentType : 'application/json; charset=utf-8',
			//응답데이터 형식지정
			dataType : 'text',
			success : function(data){
				if(data=='true'){
					alert('사용할 수 있는 아이디입니다!')
				}else{
					alert('중복된 아이디입니다!')
				}
			},
			error : function(){
				alert("통신실패!!")
			}
		})
	}
	
	
   	 
    	// 유효성, 비번확인
 		$(document).on('click','#btnJoin',function(){
 			if($('#id').val() == ''){
 				alert('아이디를 입력하세요');
 				window.location.href = "RealMain.jsp";
 				return false;
 			}else if($('#pswd1').val() == ''){
 				alert('비밀번호를 입력하세요');
 				return false;
 			}else if($('#pswd2').val() == ''){
 				alert('비밀번호 재확인을 입력하세요');
 				return false;
 			}else if($('#pswd1').val() != $('#pswd2').val()){
    		alert("비밀번호가 일치하지 않습니다!!!");
	    	return false;
 			}else if($('#name').val() == ''){
 				alert('이름을 입력하세요');
 				return false;
 			}else if($('#gender').val() == ''){
 				alert('성별을 입력하세요');
 				return false;
 			}else if($('#email').val() == ''){
 				alert('이메일을 입력하세요');
 				return false;
 			}
 			else if($('#mobile').val() == ''){
 				alert('전화번호를 입력하세요');
 				return false;
 			}
 			else if($('#adress').val() == ''){
 				alert('주소 입력하세요');
 				return false;
 			}else {
    		 window.location.href = "RealMain.jsp";
    		 return true;
    	 }
     
     
     
	})
	
	
	
		
	


	</script>
	
	
	
	
	
	
	
</body>
</html>