<%@page import="com.smhrd.domain.PLACE_INFO"%>
<%@page import="com.smhrd.domain.MATCHING"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.USER_INFO"%>
<%@page import="com.smhrd.domain.matchingDAO"%>
<%@page import="com.smhrd.domain.MatchingListDAO"%>
<%@page import="com.smhrd.domain.PLACE_INFODAO"%>
<%@page import="com.smhrd.domain.USER_INFO_DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<title>참가</title>
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
<link rel="stylesheet" href="assets/css/참가.css">
<link rel="stylesheet" href="assets/css/슬라이드.css" />
<link rel="stylesheet" href="assets/css/메인배너.css" />
<link rel="stylesheet" href="assets/css/style.css" />

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
   </div>
   <!--End off Preloader -->


   <div class="culmn">
      <!--Home page style-->


      <nav class="navbar navbar-default bootsnav navbar-fixed">
         <!-- <div class="navbar-top bg-grey fix">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="navbar-callus text-left sm-text-center">
                                    <ul class="list-inline">
                                        <li><a href=""><i class="fa fa-phone"></i> Call us: 1234 5678 90</a></li>
                                        <li><a href=""><i class="fa fa-envelope-o"></i> Contact us: your@email.com</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="navbar-socail text-right sm-text-center">
                                    <ul class="list-inline">
                                        <li><a href=""><i class="fa fa-facebook"></i></a></li>
                                        <li><a href=""><i class="fa fa-twitter"></i></a></li>
                                        <li><a href=""><i class="fa fa-linkedin"></i></a></li>
                                        <li><a href=""><i class="fa fa-google-plus"></i></a></li>
                                        <li><a href=""><i class="fa fa-behance"></i></a></li>
                                        <li><a href=""><i class="fa fa-dribbble"></i></a></li>vbar--default
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> -->

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
                            <li><a href="RealMain.jsp">Home</a></li>                    
                     <li><a href="Login.jsp">로그인</a></li>
                            <li><a href="join.jsp">회원가입</a></li>
                     </c:when>
                     <c:otherwise>
                     <% System.out.println("로그인했음!"); %>
                     <li><a href="RealMain.jsp">Home</a></li>
                            <li><a href="Mypage.jsp">마이페이지</a></li>
                     <li><a href="LogoutCon">로그아웃</a></li>                           
               </c:otherwise>            
              </c:choose>
               </ul>
            </div>
            <!-- /.navbar-collapse -->
         </div>

         

      </nav>

    
      <!-- section 매치 포인트 -->
            <section id="home" class="home bg-black fix">
                <div class="slideboxb">
                    <input type="radio" name="slideb" id="slide05" checked>
                    <input type="radio" name="slideb" id="slide06">
                    <input type="radio" name="slideb" id="slide07">
                    <ul class="slidelistb">
                        <li class="slideitemb">
                            <a>
                                <label for="slide05" class="prevb"></label>
                                <img src="./assets/images/메인배너2.png">
                                <label for="slide06" class="nextb"></label>
                            </a>
                        </li>
                        <li class="slideitemb">
                            <a>
                                <label for="slide06" class="prevb"></label>
                                <img src="./assets/images/메인배너1.png">
                                <label for="slide07" class="nextb"></label>
                            </a>
                        </li>
                        <li class="slideitemb">
                            <a>
                                <label for="slide07" class="prevb"></label>
                                <img src="./assets/images/메인배너3.png">
                                <label for="slide05" class="nextb"></label>
                            </a>
                        </li>
                    </ul>
                </div>
            </section> <!--End off Home Sections-->

      <!-- 참가 -->
      <div class="sectionJoin">
         <div id="sectionD">
            <div class="matchTime">
               <p>${mnInfo.RES_DATE}</p>
            </div>
            <div id="matchPlace">
               <h1 class="txtH w700h">
                  <div id="placeD">
                     <a href="">${mnInfo.RES_PLACE}</a>
                  </div>
               </h1>
            </div>
            <div id="map" style="width: 100%; height: 350px;"></div>
            <div class="wtgTool">
               <p class="txt1">${matpInfo.PLACE_ADD}</p>
               <p id="toggleMap" onclick="showmap()" class="txt1"
                  style="text-decoration: underline;">
                  </p>
               <br>
            </div>
            <div class="match-info__fee">
               <div class="matchFee">
                  <div>
                     
                  </div>
                  <br>
               </div>
               <div class="joinD">
                  <div>
                     <a href="MatchSuccessCon" style="color: white">참가하기</a>
                  </div>
               </div>
            </div>
         </div>
      </div>

      <!-- section 매치 포인트 -->
      <section class="section1">
          <% 
         matchingDAO dao1 = new matchingDAO();
         PLACE_INFODAO dao2 = new PLACE_INFODAO();
         MATCHING mnInfo = (MATCHING)session.getAttribute("mnInfo");
         PLACE_INFO matpInfo = (PLACE_INFO)session.getAttribute("matpInfo");
       %>
       
         <div class="section__header">
            <div class="section__title">
               <h3>매치 포인트</h3>
            </div>
         </div>
         <div id="mnRule" class="info__list__wrapper double">
            <ul>
               <li class="info__list"><img
                  src="https://plab-football.s3.amazonaws.com/static/img/ic_info_level.svg"
                  class="icon">
                  <div>
                     <p>${ mnInfo.STN_TIER }</p>
                  </div>
               </li>
               <li class="info__list"><img
                  src="https://plab-football.s3.amazonaws.com/static/img/ic_info_gender.svg"
                  class="icon">
                  <div>
                     <p>${ mnInfo.GENDER }</p>
                  </div>
               </li>
               <li class="info__list"><img
                  src="./assets/images/badminton_icon.png" class="icon">
                  <div>
                     <p>${ mnInfo.UNIT }</p>
                  </div></li>
               <li class="info__list"><img
                  src="https://plab-football.s3.amazonaws.com/static/img/ic_info_max_player_cnt.svg"
                  class="icon">
                  <div>
                     <p>${ mnInfo.MAT_MEMBER}</p>
                  </div></li>
               <li class="info__list"><img
                  src="https://plab-football.s3.amazonaws.com/static/img/ic_info_shoes.svg"
                  class="icon">
                  <div>
                     <p class="link">실내 운동화</p>
                  </div></li>
            </ul>
         </div>
         <div class="stadInner">
            <div class="info__list__wrapper">
               <ul>
                  <li class="info__list"><img
                     src="https://plab-football.s3.amazonaws.com/static/img/ic_manager.svg"
                     class="icon">
                     <div>
                        <p>${ mnInfo.USER_ID }님이 진행해요</p>
                     </div></li>
               </ul>
            </div>
         </div>
      </section>




      <!-- section 경기장 정보 -->
      <section id="mnFeature" class="section">
         <div class="section__header">
            <div class="section__title">
               <h3>경기장 정보 | ${ matpInfo.PLACE_NAME }</h3>
            </div>
         </div>
         <div class="info__list__wrapper double">
            <ul>
               <li class="info__list"><img
                  src="./assets/images/badminton_icon.png" class="icon">
                  <div>
                     <p>경기장크기</p>
                  </div></li>
               <li class="info__list"><img
                  src="https://plab-football.s3.amazonaws.com/static/img/ic_info_shower.svg"
                  class="icon no">
                  <div>
                     <p class="title__line">샤워실 유무 | ${ matpInfo.SHOWER }</p>
                  </div></li>
               <li class="info__list "><img
                  src="https://plab-football.s3.amazonaws.com/static/img/ic_info_park.svg"
                  alt="무료주차" class="icon">
                  <div>
                     <p class="link">주차정보 | ${ matpInfo.PARKING }</p>
                  </div></li>
               <li class="info__list"><img
                  src="https://plab-football.s3.amazonaws.com/static/img/ic_info_shoes.svg"
                  class="icon">
                  <div>
                     <p>용품 대여</p>
                  </div></li>
               <li class="info__list"><img
                  src="https://plab-football.s3.amazonaws.com/static/img/ic_info_wear.svg"
                  class="icon no">
                  <div>
                     <p class="title__line">운동복 대여 | ${ matpInfo.OUTDOOR }</p>
                  </div></li>
            </ul>
         </div>
      </section>

      <!-- section 구장 특이사항 -->
      <section id="mnuniqueness" class="section">
         <div class="stadInner section__body" style="border: none;">
            <ul class="uniqueness">
               <h4>구장 특이사항</h4>
               <li>풋살장 가는 길: GS25 마천우방점 옆 골목 250미터 직진</li>
               <br>
               <li>주차 : 주차 사전 신청, 주차 사전 미 신청자는 주차가 불가능하며 퇴장 조치 될 수 있습니다.</li>
               <li>사전 주차 신청을 하지 못 했을 경우 도보 5분 거리의 있는 천마 공영 주차장을 이용해주세요.</li>
               <li>(서울특별시 송파구 성내천로33가길 20, 30분당 300원)</li>
               <br>
               <li>주의사항 : 축구화 착용은 금지되며 적발 시 퇴장 조치될 수 있습니다.</li>
               <br>
               <li>흡연: 흡연구역 외 절대 금연</li>
               <br>
               <li>(흡연구역 외에서 흡연 적발 시 이후 서비스 이용에 제재가 있을 수 있습니다.)</li>
               <br>
               <li>풋살화 대여: O (245mm~, 3천 원)</li>
            </ul>
            <div></div>
         </div>
      </section>


   </div>
   </div>
   </section>

   <!-- section 안내 사항 -->

   <section id="mnCaution" class="section">
      <div class="section__header">
         <div class="section__title">
            <h3>매치 안내</h3>
         </div>
      </div>
      <div class="stadInner section__body" style="border: none;">
         <ul class="matchRule">
            <h4>일반</h4>
            <li>매치 시작 1시간 30분 전까지 최소 인원(2명) 미달 시 매치가 취소 됩니다. 취소 시 카카오톡을 통해
               안내드리며 캐시는 전액 환급됩니다.</li>
            <br>
         </ul>
         <ul class="matchRule">
            <h4>특수 (천재지변)</h4>
            <li>전날 기준 기상청 날씨누리 기준 해당 지역 천재지변 예보가 있는 경우 매치 당일 00시 부터 환급 기준이
               변경 됩니다.</li>
            <br>
            <li>진행이 확정되었지만 매치 진행에 변동이 있을 경우 매치 시작 1시간 전까지 안내드립니다.</li>
            <br>
            <li>매치 시작 1시간 30분 전까지 취소하지 않고 불참하면 매너온도 하락으로 향후 이용에 제한이 있습니다.</li>
            <br>
         </ul>
         <div></div>
      </div>
   </section>




   <footer id="contact" class="footer action-lage bg-black p-top-80">
         <!--<div class="action-lage"></div>-->
         <div class="footercontainer">
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
                           <h5 class="text-white">Developer</h5>
                           <div class="widget_latst_item m-top-30">
                              <div class="item_icon">
                                 <img src="assets/images/ltst-img-1.jpg" alt="" />
                              </div>
                              <div class="widget_latst_item_text">
                                 <p>프로젝트 총괄, DB 데이터 관리, 웹 프로그래밍</p>
                                 <a href="">정구영</a>
                              </div>
                           </div>
                           <div class="widget_latst_item m-top-30">
                              <div class="item_icon">
                                 <img src="assets/images/ltst-img-2.jpg" alt="" />
                              </div>
                              <div class="widget_latst_item_text">
                                 <p>데이터 수집, DB 환경 구축, DB 환경 연결</p>
                                 <a href="">이현영</a>
                              </div>
                           </div>
                           <div class="widget_latst_item m-top-30">
                              <div class="item_icon">
                                 <img src="assets/images/ltst-img-3.jpg" alt="" />
                              </div>
                              <div class="widget_latst_item_text">
                                 <p>웹 페이지 제작, 웹 프로그래밍</p>
                                 <a href="">김승현</a>
                              </div>
                           </div>
                        </div>
                        <!-- End off widget item -->
                     </div>
                     <!-- End off col-md-3 -->

                     <!--개발자 추가-->
                     <div class="col-md-3">
                        <div class="widget_item widget_latest sm-m-top-50">
                           <h5 class="text-white">
                              <br>
                           </h5>
                           <div class="widget_latst_item m-top-30" id="widget_item_1">
                              <div class="item_icon">
                                 <img src="assets/images/ltst-img-1.jpg" alt="" />
                              </div>
                              <div class="widget_latst_item_text">
                                 <p>웹 페이지 제작, 웹 퍼블리싱</p>
                                 <a href="">김대현</a>
                              </div>
                           </div>
                           <div class="widget_latst_item m-top-30" id="widget_item_2">
                              <div class="item_icon">
                                 <img src="assets/images/ltst-img-2.jpg" alt="" />
                              </div>
                              <div class="widget_latst_item_text">
                                 <p>웹 총괄, 웹 페이지 개발</p>
                                 <a href="">김건우</a>
                              </div>
                           </div>
                           <div class="widget_latst_item m-top-30" id="widget_item_3">
                              <div class="item_icon">
                                 <img src="assets/images/ltst-img-3.jpg" alt="" />
                              </div>
                              <div class="widget_latst_item_text">
                                 <p>웹 페이지 제작, 웹 프로그래밍</p>
                                 <a href="">주나현</a>
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
                              <li class="m-top-20"><a href="RealMain.jsp"><i
                                    class="fa fa-angle-right"></i> 매치</a></li>
                              <li class="m-top-20"><a href="Rental.jsp"><i
                                    class="fa fa-angle-right"></i> 구장 예약</a></li>
                              <li class="m-top-20"><a href="Mypage.jsp"><i
                                    class="fa fa-angle-right"></i> 마이페이지</a></li>
                              <li class="m-top-20"><a href="join.jsp"><i
                                    class="fa fa-angle-right"></i> 회원가입</a></li>
                              <li class="m-top-20"><a href="Login.jsp"><i
                                    class="fa fa-angle-right"></i> 로그인</a></li>
                              <li class="m-top-20"><a href="info.jsp"><i
                                    class="fa fa-angle-right"></i> 티어, 매너 안내</a></li>
                           </ul>
                        </div>
                        <!-- End off widget item -->
                     </div>
                     <!-- End off col-md-3 -->

                     <div class="col-md-3fix">
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
                              <a href="RealMain.jsp" class="text-uppercase"><img
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
   <script type="text/javascript"
      src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b2c6338e234665ca02d6a8917dd7772f"></script>
   <script>
      var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
      mapOption = {
         center : new kakao.maps.LatLng(${matpInfo.PLACE_LAT},${matpInfo.PLACE_HAR} ), // 지도의 중심좌표
         level : 3
      // 지도의 확대 레벨
      };

      // 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
      var map = new kakao.maps.Map(mapContainer, mapOption);

      // 마커가 표시될 위치입니다 
      var markerPosition = new kakao.maps.LatLng(${matpInfo.PLACE_LAT}, ${matpInfo.PLACE_HAR});

      // 마커를 생성합니다
      var marker = new kakao.maps.Marker({
         position : markerPosition

      });

      // 마커가 지도 위에 표시되도록 설정합니다
      marker.setMap(map);
   </script>



   <script src="assets/js/plugins.js"></script>
   <script src="assets/js/main.js"></script>

</body>
</html>