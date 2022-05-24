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
                  <li><a href="회원가입.jsp">회원가입</a></li>
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


         <!-- PW1 -->
         <div>
            <h3 class="join_title">
               <label for="pswd1">비밀번호</label>
            </h3>
            <span class="box int_pass">
               <input type="text" id="pswd1" class="int" maxlength="20">
                  <span id="alertTxt">
                     
                  </span>
               <img src="./assets/images/m_icon_pass.png" id="pswd1_img1" class="pswdImg">
            </span>
            <span class="error_next_box">
            </span>
         </div>

         <!-- PW2 -->
         <div>
            <h3 class="join_title">
               <label for="pswd2">비밀번호 재확인</label>
            </h3>
            <span class="box int_pass_check"> <input type="text"
               id="pswd2" class="int" maxlength="20"> <img
               src="./assets/images/m_icon_check_disable.png" id="pswd2_img1"
               class="pswdImg">
            </span> <span class="error_next_box"></span>
         </div>

         <!-- NAME -->
         <div>
            <h3 class="join_title">
               <label for="name">이름</label>
            </h3>
            <span class="box int_name"> <input type="text" id="name"
               class="int" maxlength="20">
            </span> <span class="error_next_box"></span>
         </div>


         <!-- EMAIL -->
         <div>
            <h3 class="join_title">
               <label for="email">본인확인 이메일<span class="optional"></span></label>
            </h3>
            <span class="box int_email"> <input type="text" id="email"
               class="int" maxlength="100" placeholder="">
            </span> <span class="error_next_box">이메일 주소를 다시 확인해주세요.</span>
         </div>

         <!-- MOBILE -->
         <div>
            <h3 class="join_title">
               <label for="phoneNo">휴대전화</label>
            </h3>
            <span class="box int_mobile"> <input type="tel" id="mobile"
               class="int" maxlength="16" placeholder="전화번호 입력">
            </span> <span class="error_next_box"></span>
         </div>



         <!-- JOIN BTN-->
         <div class="btn_area">
            <button type="button" id="btnJoin">
               <a href="main.jsp" style="color: white;">수정하기</a>
            </button>
         </div>




      </div>
      <!-- content-->

   </div>
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
   <script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
   <script>
    // 유효성, 비번확인
       $(document).on('click','#btnJoin',function(){
          if($('#pswd1').val() == ''){
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
          }else if($('#email').val() == ''){
             alert('이메일을 입력하세요');
             return false;
          }else if($('#mobile').val() == ''){
             alert('전화번호를 입력하세요');
             return false;
          }else {
           window.location.href = "RealMain.jsp";
           return true;
        }

   })
   </script>
</body>
</html>