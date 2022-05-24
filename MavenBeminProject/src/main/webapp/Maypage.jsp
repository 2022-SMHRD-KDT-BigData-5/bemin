<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Made One</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" type="image/png" href="favicon.ico">

        <!--Google Font link-->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">


        <link rel="stylesheet" href="assets/css/slick/slick.css"> 
        <link rel="stylesheet" href="assets/css/slick/slick-theme.css">
        <link rel="stylesheet" href="assets/css/animate.css">
        <link rel="stylesheet" href="assets/css/iconfont.css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/bootstrap.css">
        <link rel="stylesheet" href="assets/css/magnific-popup.css">
        <link rel="stylesheet" href="assets/css/bootsnav.css">
        <link rel="stylesheet" href="assets/css/mypage.css">

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
    </div><!--End off Preloader -->


    <div class="culmn">
        <!--Home page style-->


        <nav class="navbar navbar-default bootsnav navbar-fixed">
           
            <div class="container"> 
                <div class="attr-nav">
                    <ul>
                        <li class="search"><a href="#"><i class="fa fa-search"></i></a></li>
                    </ul>
                </div>

                <!-- Start Header Navigation -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
                        <i class="fa fa-bars"></i>
                    </button>
                    <a class="navbar-brand" href="./RealMain.jsp">
                        <img src="assets/images/bluelogo.png" class="logo" alt="">
                        <!--<img src="assets/images/footer-logo.png" class="logo logo-scrolled" alt="">-->
                    </a>

                </div>
                <!-- End Header Navigation -->
                
                <!-- navbar menu -->
                <div class="collapse navbar-collapse" id="navbar-menu">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="./RealMain.jsp">Home</a></li>                    
                        <li><a href="./LogoutCon">로그아웃</a></li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div> 
        </nav>
    </div>

        <!--mypage Sections-->   
        <div class="mypage-form-container">
        <div class="mypage-container shadow">
            <span class="mypage-form-right-side">
                <div class="mypage-form-myname">
                    <h3>이름</h3>
                </div>
                <div class="mypage-form-email">
                    <p>이메일</p>
                    <div class="mypage-form-change">
                        <a href="./회원정보수정.jsp">내정보 수정</a>
                    </div>
                </div>
                <div class="mypage-form-tier">
                    <p>티어</p>
                    <a href="#">티어 알아보기</a>
                </div>
                <div class="mypage-form-manner">
                    <p>매너 점수</p>
                    <a href="#">매너 점수 알아보기</a>
                </div>
                <div class="mypage-form-cash">
                    <p>캐시</p>
                    <button class="mypage-btn-wrap shadow"> 충전 </button>
                </div>
            </span>
            <span class="mypage-form-left-side">
                <div class="mypage-top-wrap">
                    <p>신청내역</p>
                    <a href="신청내역.jsp">신청내역 더보기</a>
                </div>
                <div class="mypage-input-wrap list">
                    <table class="table table-striped">
                            <tr>
                            <th>날짜</th>
                            <th>시간</th>
                            <th>경기장</th>
                        </tr>
                        <tr>
                            <td>5/17</td>
                            <td>3:00</td>
                               <td>광주</td>
                            </tr>
                    </table>
                </div>
            </span>
        </div>
    </div>    
=======
<%@page import="com.smhrd.domain.MATCHING"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.matchingDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@page import="com.smhrd.domain.USER_INFO"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>마이페이지</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" type="image/png" href="favicon.ico">

        <!--Google Font link-->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">


        <link rel="stylesheet" href="assets/css/slick/slick.css"> 
        <link rel="stylesheet" href="assets/css/slick/slick-theme.css">
        <link rel="stylesheet" href="assets/css/animate.css">
        <link rel="stylesheet" href="assets/css/iconfont.css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/bootstrap.css">
        <link rel="stylesheet" href="assets/css/magnific-popup.css">
        <link rel="stylesheet" href="assets/css/bootsnav.css">
        <link rel="stylesheet" href="assets/css/mypage.css">

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
    </div><!--End off Preloader -->


    <div class="culmn">
        <!--Home page style-->


        <nav class="navbar navbar-default bootsnav navbar-fixed">
           
            <div class="container"> 
                <div class="attr-nav">
                    <ul>
                        <li class="search"><a href="#"><i class="fa fa-search"></i></a></li>
                    </ul>
                </div>

                <!-- Start Header Navigation -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
                        <i class="fa fa-bars"></i>
                    </button>
                    <a class="navbar-brand" href="#brand">
                        <img src="assets/images/bluelogo.png" class="logo" alt="">
                        <!--<img src="assets/images/footer-logo.png" class="logo logo-scrolled" alt="">-->
                    </a>

                </div>
                <!-- End Header Navigation -->
                
                <!-- navbar menu -->
                <div class="collapse navbar-collapse" id="navbar-menu">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="./RealMain.jsp">Home</a></li>                    
                        <li><a href="LogoutCon">로그아웃</a></li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div> 
        </nav>
    </div>

        <!--mypage Sections-->   
        <div class="mypage-form-container">
        <div class="mypage-container shadow">
            <span class="mypage-form-right-side">
                <div class="mypage-form-myname">
                    <h3>${loginMember.NAME }님 환영합니다 🙋‍♀️</h3>
                </div>
                <div class="mypage-form-email">
                    <p>이메일 <br>${loginMember.EMAIL }</p>
                    <div class="mypage-form-change">
                        <a href="./회원정보수정.jsp">내정보 수정</a>
                    </div>
                </div>
                <div class="mypage-form-tier">
                    <!-- <p>티어 ${loginMember.USER_TIER }</p> -->
                    
                <c:choose>    
                    <c:when test="${loginMember.USER_TIER <=100}">
                    <p>티어 ${loginMember.USER_TIER } 루키</p>
                    <img src="assets/images/루키.png" style=width:150px; height:150px; >
                    </c:when>
                    <c:when test="${loginMember.USER_TIER >100 and loginMember.USER_TIER <=150}">
                    <p>티어 ${loginMember.USER_TIER } 비기너1</p>
                    <img src="assets/images/비기너1.png" style=width:150px; height:150px; >
                    </c:when>
                    <c:when test="${loginMember.USER_TIER >150 and loginMember.USER_TIER <=200}">
                    <p>티어 ${loginMember.USER_TIER } 비기너2</p>
                    <img src="assets/images/비기너2.png" style=width:150px; height:150px; >
                    </c:when>
                    <c:when test="${loginMember.USER_TIER >200 and loginMember.USER_TIER <=250}">
                    <p>티어 ${loginMember.USER_TIER } 주니어1</p>
                    <img src="assets/images/주니어1.png" style=width:150px; height:150px; >
                    </c:when>
                    <c:when test="${loginMember.USER_TIER >250 and loginMember.USER_TIER <=300}">
                    <p>티어 ${loginMember.USER_TIER } 주니어2</p>
                    <img src="assets/images/주니어2.png" style=width:150px; height:150px; >
                    </c:when>
                    <c:when test="${loginMember.USER_TIER >300 and loginMember.USER_TIER <=330}">
                    <p>티어 ${loginMember.USER_TIER } 시니어1</p>
                    <img src="assets/images/시니어1.png" style=width:150px; height:150px; >
                    </c:when>
                    <c:when test="${loginMember.USER_TIER >330 and loginMember.USER_TIER <=360}">
                    <p>티어 ${loginMember.USER_TIER } 시니어2</p>
                    <img src="assets/images/시니어2.png" style=width:150px; height:150px; >
                    </c:when>
                    <c:when test="${loginMember.USER_TIER >360 and loginMember.USER_TIER <=400}">
                    <p>티어 ${loginMember.USER_TIER } 시니어3</p>
                    <img src="assets/images/시니어3.png" style=width:150px; height:150px; >
                    </c:when>
                    <c:when test="${loginMember.USER_TIER >400 and loginMember.USER_TIER <=430}">
                    <p>티어 ${loginMember.USER_TIER } 프로1</p>
                    <img src="assets/images/프로1.png" style=width:150px; height:150px; >
                    </c:when>
                    <c:when test="${loginMember.USER_TIER >430 and loginMember.USER_TIER <=460}">
                    <p>티어 ${loginMember.USER_TIER } 프로2</p>
                    <img src="assets/images/프로2.png" style=width:150px; height:150px; >
                    </c:when>
                    <c:when test="${loginMember.USER_TIER >460 and loginMember.USER_TIER <=500}">
                    <p>티어 ${loginMember.USER_TIER } 프로3</p>
                    <img src="assets/images/프로3.png" style=width:150px; height:150px; >
                    </c:when><c:when test="${loginMember.USER_TIER >500 and loginMember.USER_TIER <=600}">
                    <p>티어 ${loginMember.USER_TIER } 플라이트</p>
                    <img src="assets/images/플라이트.png" style=width:150px; height:150px; >
                    </c:when>
                  </c:choose>
                    <div class="mypage-form-manner">
                    <p>매너 점수 ${loginMember.USER_MANNER }</p>
                    
                    <a href="./티어매너안내.jsp">티어 매너점수 알아보기</a>
                     </div>
                </div>
                
                <div class="mypage-form-cash">
                    <p>캐시</p>
                    <a href=""><button class="mypage-btn-wrap shadow"> 충전 </button></a>
                </div>
            </span>
            <span class="mypage-form-left-side">
                <div class="mypage-top-wrap">
                    <p>신청내역</p>
                    <a href="sinchung.jsp">신청내역 더보기</a>
                </div>
                
				<%
				matchingDAO dao = new matchingDAO();
				USER_INFO u_vo = (USER_INFO)session.getAttribute("loginMember");
				List<MATCHING> matList = dao.selectMatchig(u_vo.getID());
				pageContext.setAttribute("matList", matList);
				%>
                <div class="mypage-input-wrap list">
                    <table class="table table-striped">
                            <tr>
                            <th>날짜</th>
                            <th>시간</th>
                            <th>경기장</th>
                        </tr>
                    <c:forEach var="mat" items="${matList}" varStatus="status">
					<c:set var="matid" value="${mat.USER_ID}"/>
					<c:set var="matnum" value="${mat.MAT_NO}"/>
                        <tr>
                            <td><c:out value="${mat.RES_DATE}" /></td>
                            <td><c:out value="${mat.RES_TIME}" /></td>
                            <td><c:out value="${mat.RES_PLACE}" /></td>
                        </tr>
                    </c:forEach>
                    </table>
                </div>
              
                
            </span>
            
        </div>
    </div>    

>>>>>>> branch 'master' of https://github.com/2022-SMHRD-KDT-BigData-5/bemin.git
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

</body>
</html>