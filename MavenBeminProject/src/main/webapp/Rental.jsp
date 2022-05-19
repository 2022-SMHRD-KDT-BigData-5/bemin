<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <html class="no-js" lang="en"> 
<head>
<meta charset="UTF-8">
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
        <link rel="stylesheet" href="assets/css/메인.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/responsive.css" />
        <!-- <link rel="stylesheet" href="assets/css/슬라이드.css" />     -->
        <link rel="stylesheet" href="assets/css/rental.css" />
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
        </div><!--End off Preloader -->


        <div class="culmn">
            <!--Home page style-->


            <nav class="navbar navbar-default bootsnav navbar-fixed">
         

                <!-- Start Top Search -->
                <div class="top-search">
                    <div class="container">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-search"></i></span>
                            <input type="text" class="form-control" placeholder="Search">
                            <span class="input-group-addon close-search"><i class="fa fa-times"></i></span>
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
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="메인.html">
                    <img src="assets/images/bluelogo.png" class="logo" alt="">
                    <!-- <a>FLIGHT</a> -->
                    <!--<img src="assets/images/footer-logo.png" class="logo logo-scrolled" alt="">-->
                </a>

            </div>
                    <!-- End Header Navigation -->

                    <!-- navbar menu -->
                    <div class="collapse navbar-collapse" id="navbar-menu">
                        <ul class="nav navbar-nav navbar-right">                   
                            <li><a href="./회원가입.html">회원가입</a></li>
                            <li><a href="./로그인.html">로그인</a></li>
                            <li><a href="./마이페이지.html">마이페이지</a></li>
                            <li><a href="./메인.html">로그아웃</a></li>
                            <!-- <li><a href="#test">Blog</a></li> -->
                            <!-- <li><a href="#contact">Contact</a></li> -->
                        </ul>
                    </div><!-- /.navbar-collapse -->
                </div> 

            </nav>

            <!--Home Sections-->



            <section class="match_container">
                <div class="main--match--container">
                    <div id="dateNav" class="sub-header" style="padding-bottom: 10px;">
                        <div class="mat-re">
                            <span id="m1">
                                <a href="main.jsp">매치</a>
                                <a href="Rental.jsp" id="m2">구장 예약</a>
                            </span>
                        </div>
                        <!---->
                        <div class="slidebox">
                            <input type="radio" name="slide" id="slide01" checked>
                            <input type="radio" name="slide" id="slide02">
                            <input type="radio" name="slide" id="slide03">
                            <input type="radio" name="slide" id="slide04">
                            <ul class="slidelist">
                                <li class="slideitem">
                                    <button class="pt1"><div class="pt1-text"><div>1</div>월</div></button>
                                    <button class="pt1"><div class="pt1-text"><div>2</div>화</div></button>
                                    <button class="pt1"><div class="pt1-text"><div>3</div>수</div</button>
                                    <button class="pt1"><div class="pt1-text"><div>4</div>목</div</button>
                                    <button class="pt1"><div class="pt1-text"><div>5</div>금</div</button>
                                    <button class="pt1"><div class="pt1-text"><div>6</div>토</div</button>
                                    <button class="pt1"><div class="pt1-text"><div>7</div>일</div</button>
                                </li>
                                <li class="slideitem">
                                    <button class="pt1"><div class="pt1-text"><div>8</div>월</div></button>
                                    <button class="pt1"><div class="pt1-text"><div>9</div>화</div></button>
                                    <button class="pt1"><div class="pt1-text"><div>10</div>수</div></button>
                                    <button class="pt1"><div class="pt1-text"><div>11</div>목</div></button>
                                    <button class="pt1"><div class="pt1-text"><div>12</div>금</div></button>
                                    <button class="pt1"><div class="pt1-text"><div>13</div>토</div></button>
                                    <button class="pt1"><div class="pt1-text"><div>14</div>일</div></button>
                                </li>
                                <li class="slideitem">
                                    <button class="pt1"><div class="pt1-text"><div>15</div>월</div></button>
                                    <button class="pt1"><div class="pt1-text"><div>16</div>화</div></button>
                                    <button class="pt1"><div class="pt1-text"><div>17</div>수</div></button>
                                    <button class="pt1"><div class="pt1-text"><div>18</div>목</div></button>
                                    <button class="pt1"><div class="pt1-text"><div>19</div>금</div></button>
                                    <button class="pt1"><div class="pt1-text"><div>20</div>토</div></button>
                                    <button class="pt1"><div class="pt1-text"><div>21</div>일</div></button>
                                </li>
                                <li class="slideitem">
                                    <button class="pt1"><div class="pt1-text"><div>22</div>월</div></button>
                                    <button class="pt1"><div class="pt1-text"><div>23</div>화</div></button>
                                    <button class="pt1"><div class="pt1-text"><div>24</div>수</div></button>
                                    <button class="pt1"><div class="pt1-text"><div>25</div>목</div></button>
                                    <button class="pt1"><div class="pt1-text"><div>26</div>금</div></button>
                                    <button class="pt1"><div class="pt1-text"><div>27</div>토</div></button>
                                    <button class="pt1"><div class="pt1-text"><div>28</div>일</div></button>
                                </li>
                            </ul>
                            <div class="slide-control">
                                <div class="control01">
                                    <label for="slide04" class="prev"></label>
                                    <label for="slide02" class="next"></label>
                                </div>
                                <div class="control02">
                                    <label for="slide01" class="prev"></label>
                                    <label for="slide03" class="next"></label>
                                </div>
                                <div class="control03">
                                    <label for="slide02" class="prev"></label>
                                    <label for="slide04" class="next"></label>
                                </div>
                                <div class="control04">
                                    <label for="slide03" class="prev"></label>
                                    <label for="slide01" class="next"></label>
                                </div>
                            </div>
                        </div>
                        <div class="main__filter">
                            <div class="main--match--filter">
                                <div class="filter--wrapper">
                                    <div class="placelist">
                                       
                                        <div>
                                            <select name="select" class="select-c" style=" font-size: 15px;">
                                            <option>내 지역</option>
                                            <option>서구</option>
                                            <option>북구</option>
                                            <option>남구</option>
                                            <option>동구</option>
                                            <option>광산구</option>
                                        </select>
                                        <select name="select" class="select-lv" style=" font-size: 15x;">
                                            <option>레벨 선택</option>
                                            <option>비기너 이상</option>
                                            <option>루키 이상</option>
                                            <option>주니어 이상</option>
                                            <option>시니어 이상</option>
                                            <option>프로 이상</option>
                                            <option> 플라이트</option>                                          
                                        </select>
                                    </div>
                           
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--match list-->
                    <div id="list" class="list--match-schedule--container">
                        <ul>
                            <li>
                            <div>
                                <p><h3>광주 배드민턴장</h3></p>
                                
                                <div class="plc-in">
                                    <a style="font-size: medium;">구장</a>
                                    <a style="font-size: small;">규격</a>
                                    <button  class="place-info"><a href="#" class="pi-bnt" >경기장정보</a></button> 
                    
                                </div>
                                <div class="time-mem">
                                 <a href="결제.html" class="time1">
                                        <p class="t1">09:00 ~ 11:00 </p>
                                        <p class="t1">12:00 ~ 14:00 </p>
                                        <p class="t1">15:00 ~ 17:00 </p>
                                        <p class="t1">18:00 ~ 20:00 </p>
                                        <p class="t1">20:00 ~ 22:00 </p>
                                        <p id="t2">22:00 ~ 24:00 </p>
                                    </a>
                                </div>
                            </div>
                         </li>
                         
                    
                         <li>
                            <div>
                                <p><h3>광주 배드민턴장</h3></p>
                                <div class="plc-in">
                                    <a style="font-size: medium;">구장</a>
                                    <a style="font-size: small;">규격</a>
                                    <button  class="place-info"><a href="#" class="pi-bnt" >경기장정보</a></button> 
                    
                                </div>
                                <div class="time-mem">
                                 <a href="결제.html" class="time1">
                                        <p class="t1">09:00 ~ 11:00 </p>
                                        <p class="t1">12:00 ~ 14:00 </p>
                                        <p class="t1">15:00 ~ 17:00 </p>
                                        <p class="t1">18:00 ~ 20:00 </p>
                                        <p class="t1">20:00 ~ 22:00 </p>
                                        <p id="t2">22:00 ~ 24:00 </p>
                                    </a>
                                </div>
                            </div>
                         </li>
                         
                    
                         <li>
                            <div>
                                <p><h3>광주 배드민턴장</h3></p>
                                <div class="plc-in">
                                    <a style="font-size: medium;">구장</a>
                                    <a style="font-size: small;">규격</a>
                                    <button  class="place-info"><a href="#" class="pi-bnt" >경기장정보</a></button> 
                    
                                </div>
                                <div class="time-mem">
                                 <a href="결제.html" class="time1">
                                        <p class="t1">09:00 ~ 11:00 </p>
                                        <p class="t1">12:00 ~ 14:00 </p>
                                        <p class="t1">15:00 ~ 17:00 </p>
                                        <p class="t1">18:00 ~ 20:00 </p>
                                        <p class="t1">20:00 ~ 22:00 </p>
                                        <p id="t2">22:00 ~ 24:00 </p>
                                    </a>
                                </div>
                            </div>
                         </li>
                         
                    
                         <li>
                            <div>
                                <p><h3>광주 배드민턴장</h3></p>
                                <div class="plc-in">
                                    <a style="font-size: medium;">구장</a>
                                    <a style="font-size: small;">규격</a>
                                    <button  class="place-info"><a href="#" class="pi-bnt" >경기장정보</a></button> 
                    
                                </div>
                                <div class="time-mem">
                                 <a href="결제.html" class="time1">
                                        <p class="t1">09:00 ~ 11:00 </p>
                                        <p class="t1">12:00 ~ 14:00 </p>
                                        <p class="t1">15:00 ~ 17:00 </p>
                                        <p class="t1">18:00 ~ 20:00 </p>
                                        <p class="t1">20:00 ~ 22:00 </p>
                                        <p id="t2">22:00 ~ 24:00 </p>
                                    </a>
                                </div>
                            </div>
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
                                    <p class="m-top-20">Lorem ipsum dolor sit amet consec tetur adipiscing elit 
                                        nulla aliquet pretium nisi in cursus 
                                        maecenas nec eleifen.</p>
                                    <div class="widget_ab_item m-top-30">
                                        <div class="item_icon"><i class="fa fa-location-arrow"></i></div>
                                        <div class="widget_ab_item_text">
                                            <h6 class="text-white">Location</h6>
                                            <p>
                                                123 suscipit ipsum nam auctor
                                                mauris dui, ac sollicitudin mauris,
                                                Bandung</p>
                                        </div>
                                    </div>
                                    <div class="widget_ab_item m-top-30">
                                        <div class="item_icon"><i class="fa fa-phone"></i></div>
                                        <div class="widget_ab_item_text">
                                            <h6 class="text-white">Phone :</h6>
                                            <p>+1 2345 6789</p>
                                        </div>
                                    </div>
                                    <div class="widget_ab_item m-top-30">
                                        <div class="item_icon"><i class="fa fa-envelope-o"></i></div>
                                        <div class="widget_ab_item_text">
                                            <h6 class="text-white">Email Address :</h6>
                                            <p>youremail@mail.com</p>
                                        </div>
                                    </div>
                                </div><!-- End off widget item -->
                            </div><!-- End off col-md-3 -->

                            <div class="col-md-3">
                                <div class="widget_item widget_latest sm-m-top-50">
                                    <h5 class="text-white">Latest News</h5>
                                    <div class="widget_latst_item m-top-30">
                                        <div class="item_icon"><img src="assets/images/ltst-img-1.jpg" alt="" /></div>
                                        <div class="widget_latst_item_text">
                                            <p>Lorem ipsum dolor sit amet, consectetur</p>
                                            <a href="">21<sup>th</sup> July 2016</a>
                                        </div>
                                    </div>
                                    <div class="widget_latst_item m-top-30">
                                        <div class="item_icon"><img src="assets/images/ltst-img-2.jpg" alt="" /></div>
                                        <div class="widget_latst_item_text">
                                            <p>Lorem ipsum dolor sit amet, consectetur</p>
                                            <a href="">21<sup>th</sup> July 2016</a>
                                        </div>
                                    </div>
                                    <div class="widget_latst_item m-top-30">
                                        <div class="item_icon"><img src="assets/images/ltst-img-3.jpg" alt="" /></div>
                                        <div class="widget_latst_item_text">
                                            <p>Lorem ipsum dolor sit amet, consectetur</p>
                                            <a href="">21<sup>th</sup> July 2016</a>
                                        </div>
                                    </div>
                                </div><!-- End off widget item -->
                            </div><!-- End off col-md-3 -->

                            <div class="col-md-3">
                                <div class="widget_item widget_service sm-m-top-50">
                                    <h5 class="text-white">Latest News</h5>
                                    <ul class="m-top-20">
                                        <li class="m-top-20"><a href=""><i class="fa fa-angle-right"></i> Web Design</a></li>
                                        <li class="m-top-20"><a href=""><i class="fa fa-angle-right"></i> User Interface Design</a></li>
                                        <li class="m-top-20"><a href=""><i class="fa fa-angle-right"></i> E- Commerce</a></li>
                                        <li class="m-top-20"><a href=""><i class="fa fa-angle-right"></i> Web Hosting</a></li>
                                        <li class="m-top-20"><a href=""><i class="fa fa-angle-right"></i> Themes</a></li>
                                        <li class="m-top-20"><a href=""><i class="fa fa-angle-right"></i> Support Forums</a></li>
                                    </ul>
                                </div><!-- End off widget item -->
                            </div><!-- End off col-md-3 -->

                            <div class="col-md-3">
                                <div class="widget_item widget_newsletter sm-m-top-50">
                                    <h5 class="text-white">Newsletter</h5>
                                    <form class="form-inline m-top-30">
                                        <div class="form-group">
                                            <input type="email" class="form-control" placeholder="Enter you Email">
                                            <button type="submit" class="btn text-center"><i class="fa fa-arrow-right"></i></button>
                                        </div>

                                    </form>
                                    <div class="widget_brand m-top-40">
                                        <a href="" class="text-uppercase">Your Logo</a>
                                        <p>Lorem ipsum dolor sit amet consec tetur 
                                            adipiscing elit nulla aliquet pretium nisi in</p>
                                    </div>
                                    <ul class="list-inline m-top-20">
                                        <li>-  <a href=""><i class="fa fa-facebook"></i></a></li>
                                        <li><a href=""><i class="fa fa-twitter"></i></a></li>
                                        <li><a href=""><i class="fa fa-linkedin"></i></a></li>
                                        <li><a href=""><i class="fa fa-google-plus"></i></a></li>
                                        <li><a href=""><i class="fa fa-behance"></i></a></li>
                                        <li><a href=""><i class="fa fa-dribbble"></i></a>  - </li>
                                    </ul>

                                </div><!-- End off widget item -->
                            </div><!-- End off col-md-3 -->
                        </div>
                    </div>
                </div>
                <div class="main_footer fix bg-mega text-center p-top-40 p-bottom-30 m-top-80">
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


    </body>
</html>