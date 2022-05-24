<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lnag="ko">
    <head>
        <meta charset="UTF-8">
        <title>회원정보수정</title>
        <link rel="stylesheet" href="assets/css/join.css">
        <link rel="icon" type="image/png" href="favicon.ico">
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

        <link rel="stylesheet" href="assets/css/slick/slick.css"> 
        <link rel="stylesheet" href="assets/css/slick/slick-theme.css">
        <link rel="stylesheet" href="assets/css/animate.css">
        <link rel="stylesheet" href="assets/css/iconfont.css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/bootstrap.css">
        <link rel="stylesheet" href="assets/css/magnific-popup.css">
        <link rel="stylesheet" href="assets/css/bootsnav.css">
        <link rel="stylesheet" href="assets/css/회원정보수정.css">
        
    </head>
    <body>
        <!-- 상단바 -->
        <nav class="navbar navbar-default bootsnav navbar-fixed">

                <!-- Start Header Navigation -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
                        <i class="fa fa-bars"></i>
                    </button>
                    <a class="navbar-brand" href="#brand">
                        <img src="assets/images/logo1.png" class="logo" alt="">
                        <!--<img src="assets/images/footer-logo.png" class="logo logo-scrolled" alt="">-->
                    </a>

                </div>
                <!-- End Header Navigation -->

                <!-- navbar menu -->
                <div class="collapse navbar-collapse" id="navbar-menu">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="./RealMain.jsp">Home</a></li>                    
                        <li><a href="./회원가입.jsp">회원가입</a></li>
                        <li><a href="./Login.jsp">로그인</a></li>
                        <li><a href="./Maypage.jsp">마이페이지</a></li>
                        <!-- <li><a href="#test">Blog</a></li> -->
                        <!-- <li><a href="#contact">Contact</a></li> -->

                        <li><a href="./Maypge.jsp">마이페이지</a></li>
                        <li><a href="LogoutCon">로그아웃</a></li>

                    </ul>
                </div><!-- /.navbar-collapse -->
            </div> 
        </nav>



        <!-- header -->
        <div class="headMessage">
            <h2>회원정보 수정</h2>
        </div>


        <!-- wrapper -->
        <div id="wrapper">

            <!-- content-->
            <div id="content">

               
                <!-- PW1 -->
                <form action="UpdateCon" method="post">
                <div>
                
                <h3>${loginMember.ID }님 환영합니다 🙋‍♀️</h3>
                    <h3 class="join_title"><label for="pswd1">비밀번호</label></h3>
                    <span class="box int_pass">
                        <input type="text" id="pswd1" value="${loginMember.PW }" placeholder="비밀번호 입력" class="int" maxlength="20">
                        <span id="alertTxt">사용불가</span>
                        <img src="m_icon_pass.png" id="pswd1_img1" class="pswdImg">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- PW2 -->
                <div>
                    <h3 class="join_title"><label for="pswd2">비밀번호 재확인</label></h3>
                    <span class="box int_pass_check">
                        <input type="text" id="pswd2" class="int" maxlength="20">
                        <img src="./assets/images/m_icon_check_disable.png" id="pswd2_img1" class="pswdImg">
                    </span>
                    <span class="error_next_box">필수 정보입니다.</span>
                </div>

                <!-- NAME -->
                <div>
                    <h3 class="join_title"><label for="name">이름</label></h3>
                    <span class="box int_name">
                        <input type="text" id="name" class="int" placeholder="이름 입력" maxlength="20">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                

                <!-- EMAIL -->
                <div>
                    <h3 class="join_title"><label for="email">본인확인 이메일</label></h3>
                    <span class="box int_email">
                        <input type="text" id="email" class="int" placeholder="이메일 입력" maxlength="100">
                    </span>
                    <span class="error_next_box">이메일 주소를 다시 확인해주세요.</span>    
                </div>

                <!-- MOBILE -->
                <div>
                    <h3 class="join_title"><label for="phoneNo">휴대전화</label></h3>
                    <span class="box int_mobile">
                        <input type="tel" id="mobile" class="int" maxlength="16" placeholder="전화번호 입력">
                    </span>
                    <span class="error_next_box"></span>    
                </div>



                <!-- 수정완료 BTN-->
                <div class="btn_area">
                    <button type="button" id="btnupdate">
                        <input type="submit" value="수정완료" style="color: white;">
                    </button>
                </div>


               
</form>

                </div>

                

            </div> 
            <!-- content-->

        
        <!-- wrapper -->
        <!-- JS includes -->
        
    <script src="assets/js/회원정보수정.js"></script>
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
    
    
    <script>
    
    $(document).on('click','#btnupdate',function(){
    if($('#pswd2').val() == ''){
			alert('비밀번호 재확인을 입력하세요');
			return false;
		}else if($('#pswd1').val() != $('#pswd2').val()){
			alert("비밀번호가 일치하지 않습니다!!!");
			return false;
		}else {
   		 window.location.href = "Maypage.jsp";
		 return true;
	 }
		})
    
    
    
    </script>
</html>