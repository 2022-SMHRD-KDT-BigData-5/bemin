<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="en">
<!doctype html>
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
<link rel="stylesheet" href="assets/css/참가.css">
<link rel="stylesheet" href="assets/css/티어매너안내.css">

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
					<a class="navbar-brand" href="main.jsp"> <img
						src="assets/images/logo1.png" class="logo" alt=""> <!-- <a>FLIGHT</a> -->
						<!--<img src="assets/images/footer-logo.png" class="logo logo-scrolled" alt="">-->
					</a>

				</div>
				<!-- End Header Navigation -->

				<!-- navbar menu -->
				<div class="collapse navbar-collapse" id="navbar-menu">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="RealMain.jsp">Home</a></li>
						<li><a href="join.jsp">회원가입</a></li>
						<li><a href="Login.jsp">로그인</a></li>
						<li><a href="Mypage.jsp">마이페이지</a></li>
						<!-- <li><a href="#test">Blog</a></li> -->
						<!-- <li><a href="#contact">Contact</a></li> -->
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>

		</nav>

		<!-- 티어매너안내 -->
		<div class="content__wrap">
			<div class="content__body">
				<div class="content-body__wrap"
					style="background-color: transparent;">
					<section class="section--wide">
						<div class="magazine-article__cover">
							<img src="./assets/images/티어수정이.png">
						</div>
						<div class="magazine-article__title">
							<h1>내 플라이트 등급은?</h1>
						</div>
					</section>
					<section class="section">
						<div class="magazine-article__content">
							<h3>등급이 필요한 이유</h3>
							<p>
								어렸을 때부터 우리는 라이벌 친구끼리 가위 바위 보로 한 명씩 뽑아서 팀을 만들었어요. 서로의 실력을 알기 때문에
								자연스럽게 두 팀의 실력이 비슷해지고 게임은 막상막하가 돼요.<br> <br>하지만 소셜
								매치에서는 서로의 실력을 알 수 없기 때문에 곧잘 실력의 균형이 깨져 버리기 쉽고 그러면 재미가 떨어져요. 그래서
								플래버들의 실력을 데이터로 남겨서 재밌게 팀을 짜기로 했어요.
							</p>
						</div>
					</section>
					<section class="section">
						<div class="magazine-article__content">
							<h3>경기에 참여하고 내 등급을 확인해보세요!</h3>
							<p>경기에 참여하고 실력에 따라 변동되는 내 플라이트 등급을 확인해보세요!</p>
							<img src="./assets/images/티어예시.png">
						</div>
					</section>
					<section class="section">
						<div class="magazine-article__content">
							<h3>6가지의 레벨이 생겨요</h3>
							<p>
								루키, 비기너, 주니어, 시니어, 프로, 플라이트 6가지 등급이 생기고 각 등급별 1~3단계로 세분화 돼요.<br>
								<br>내 등급이 오르내리는 걸 볼 수 있어요.
							</p>
							<div id="tireguide">
								<img src="./assets/images/등급안내.png">
							</div>
						</div>
					</section>
					<section class="section">
						<div class="magazine-article__content">
							<h3>등급이 바뀌나요?</h3>
							<p>
								내 컨디션이나 참가자들의 성향, 경기중 발생하는 불규칙성 등에 따라 언제든 레벨이 달라질 수 있어요.<br>
								<br>사용자들의 주관적인 판단이 포함되기 때문에 100% 정확할 수는 없지만 매치에 참여할수록 더
								정확해지는 내 레벨을 확인해볼 수 있어요!<br> <br>실력에 맞는 사용자들과 게임을 즐기기
								위한 부분이니 꼭 참여부탁드려요.
							</p>
						</div>
					</section>
					<!-- <section class="section">
                            <div class="magazine-article__cta">
                                <p>내 레벨을 확인해보세요</p>
                                <a href="https://plabfootball.com/mypage/mylevel/" class="btn__cta--section" style="background-color: rgb(53, 52, 165); color: rgb(255, 255, 255);">내 레벨 보기</a>
                            </div>
                        </section> -->
					<section class="section--wide">
						<div class="magazine-article__cover">
							<img src="./assets/images/매너안내.png">
						</div>
						<div class="magazine-article__title">
							<h1>내 매너온도는?</h1>
						</div>
					</section>
					<section class="section">
						<div class="magazine-article__content">
							<h3>매너온도가 필요한 이유</h3>
							<p>
								지속적인 비매너, 경기불참에 대한 패널티를 부여하고, 매너있는 사용자들의 매치율을 높여주기 위해 필요해요.<br>
								<br>사용자들끼리 판단하고 평가하기 때문에 100% 정확할 수는 없지만 매너있는 모습으로 매치에
								참여할수록 더 높아지는 내 매너온도를 확인해볼 수 있어요!
							</p>
						</div>
					</section>
					<section class="section">
						<div class="magazine-article__content">
							<h3>경기에 참여하고 내 매너온도를 확인해보세요!</h3>
							<p>경기가 끝나고 함께한 사용자에 대해 매너온도를 평가해줄 수 있어요.</p>
							<img src="./assets/images/매너예시.png">
						</div>
					</section>
					<!-- <section class="section">
                            <div class="magazine-article__cta">
                                <p>내 매너온도를 확인해보세요</p>
                                <a href="https://plabfootball.com/mypage/mylevel/" class="btn__cta--section" style="background-color: rgb(53, 52, 165); color: rgb(255, 255, 255);">내 레벨 보기</a>
                            </div>
                        </section> -->
				</div>
			</div>
		</div>



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
                                            <div class="item_icon"><i class="fa fa-location-arrow"></i></div>
                                            <div class="widget_ab_item_text">
                                                <h6 class="text-white">Location</h6>
                                                <p>광주 동구 예술길 31-15 4층</p>
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
                                                <p>FLIGHT@flight.com</p>
                                            </div>
                                        </div>
                                    </div><!-- End off widget item -->
                                </div><!-- End off col-md-3 -->

                                <div class="col-md-3">
                                    <div class="widget_item widget_latest sm-m-top-50">
                                        <h5 class="text-white">Developer</h5>
                                        <div class="widget_latst_item m-top-30">
                                            <div class="item_icon"><img src="assets/images/ltst-img-1.jpg" alt="" /></div>
                                            <div class="widget_latst_item_text">
                                                <p>웹페이지 제작</p>
                                                <a href="">김건우</a>
                                            </div>
                                        </div>
                                        <div class="widget_latst_item m-top-30">
                                            <div class="item_icon"><img src="assets/images/ltst-img-2.jpg" alt="" /></div>
                                            <div class="widget_latst_item_text">
                                                <p>프로젝트 역할</p>
                                                <a href="">이름</a>
                                            </div>
                                        </div>
                                        <div class="widget_latst_item m-top-30">
                                            <div class="item_icon"><img src="assets/images/ltst-img-3.jpg" alt="" /></div>
                                            <div class="widget_latst_item_text">
                                                <p>프로젝트 역할</p>
                                                <a href="">이름</a>
                                            </div>
                                        </div>
                                    </div><!-- End off widget item -->
                                </div><!-- End off col-md-3 -->

                                <!--개발자 추가-->
                                <div class="col-md-3">
                                    <div class="widget_item widget_latest sm-m-top-50">
                                        <h5 class="text-white"><br></h5>
                                        <div class="widget_latst_item m-top-30">
                                            <div class="item_icon"><img src="assets/images/ltst-img-1.jpg" alt="" /></div>
                                            <div class="widget_latst_item_text">
                                                <p>프로젝트 역할</p>
                                                <a href="">이름</a>
                                            </div>
                                        </div>
                                        <div class="widget_latst_item m-top-30">
                                            <div class="item_icon"><img src="assets/images/ltst-img-2.jpg" alt="" /></div>
                                            <div class="widget_latst_item_text">
                                                <p>프로젝트 역할</p>
                                                <a href="">이름</a>
                                            </div>
                                        </div>
                                        <div class="widget_latst_item m-top-30">
                                            <div class="item_icon"><img src="assets/images/ltst-img-3.jpg" alt="" /></div>
                                            <div class="widget_latst_item_text">
                                                <p>프로젝트 역할</p>
                                                <a href="">이름</a>
                                            </div>
                                        </div>
                                    </div><!-- End off widget item -->
                                </div><!-- End off col-md-3 -->
                                

                                <div class="col-md-3">
                                    <div class="widget_item widget_service sm-m-top-50">
                                        <h5 class="text-white">Shortcut</h5>
                                        <ul class="m-top-20">
                                            <li class="m-top-20"><a href="메인.jsp"><i class="fa fa-angle-right"></i> 매치</a></li>
                                            <li class="m-top-20"><a href="Rental.jsp"><i class="fa fa-angle-right"></i> 구장 예약</a></li>
                                            <li class="m-top-20"><a href="Maypage.jsp"><i class="fa fa-angle-right"></i> 마이페이지</a></li>
                                            <li class="m-top-20"><a href="회원가입.jsp"><i class="fa fa-angle-right"></i> 회원가입</a></li>
                                            <li class="m-top-20"><a href="Login.jsp"><i class="fa fa-angle-right"></i> 로그인</a></li>
                                            <li class="m-top-20"><a href="티어매너안내.jsp"><i class="fa fa-angle-right"></i> 티어, 매너 안내</a></li>
                                        </ul>
                                    </div><!-- End off widget item -->
                                </div><!-- End off col-md-3 -->

                                <div class="col-md-3fix">
                                    <div class="widget_item widget_newsletter sm-m-top-50">
                                        <h5 class="text-white">Newsletter</h5>
                                        <form class="form-inline m-top-30">
                                            <div class="form-group">
                                                <input type="email" class="form-control" placeholder="Enter you Email">
                                                <button type="submit" class="btn text-center"><i class="fa fa-arrow-right"></i></button>
                                            </div>

                                        </form>
                                        <div class="widget_brand m-top-40">
                                            <a href="" class="text-uppercase"><img src="assets/images/logo1.png" class="logo" alt=""></a>
                                            <p>배드민턴치고 싶을 땐 플라이트</p>
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

</body>

</html>
