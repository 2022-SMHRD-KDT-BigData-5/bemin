<%@page import="com.smhrd.domain.MatchingListDAO"%>
<%@page import="com.smhrd.domain.MATCHING_LIST"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.domain.matchingDAO"%>
<%@page import="com.smhrd.domain.MATCHING"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.USER_INFO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>신청내역</title>
<link rel="stylesheet" href="assets/css/join.css">
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
<link rel="stylesheet" href="assets/css/pagingbootstrap.css">
<link rel="stylesheet" href="assets/css/magnific-popup.css">
<link rel="stylesheet" href="assets/css/bootsnav.css">
<link rel="stylesheet" href="assets/css/신청내역.css">
<link rel="stylesheet" href="assets/css/modal.css">

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
                <!-- Start Header Navigation -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
                        <i class="fa fa-bars"></i>
                    </button>
                    <a class="navbar-brand" href="RealMain.jsp">
                        <img src="assets/images/bluelogo.png" class="logo" alt="">
                        <!--<img src="assets/images/footer-logo.png" class="logo logo-scrolled" alt="">-->
                    </a>

                </div>
                <!-- End Header Navigation -->
                
                <!-- navbar menu -->
                <div class="collapse navbar-collapse" id="navbar-menu">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="RealMain.jsp">Home</a></li>                    
                        <li><a href="LogoutCon">로그아웃</a></li>
                        <li><a href="Mypage.jsp">마이페이지</a></li>
                        <li><a href="joinUpdate.jsp">회원정보수정</a></li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div> 
        </nav>
    </div>

	<!--header-->
	<div class="container">
		<div id="mymatch" class="page-container">
			<div class="page-header">
				<div class="page-title">
					<h1 name="id">${loginMember.ID}님의 신청 내역</h1>
				</div>
				<div class="navigation-container" style="padding: 0px">
					<div class="navigation-wrapper" style="padding: top 20px;">
						<div class="navigation-item">
							<a class="selected" style="margin-left: 0px;">🏃‍♂️소셜 매치</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<form action="JoinMemberCon" method="post">
	<div class="container">
		<c:choose>
			<c:when test="${empty loginMember}">
				<a href="./Login.jsp">로그인</a>을 하세요
			</c:when>
			<c:otherwise>
				<%
				matchingDAO dao = new matchingDAO();
				USER_INFO u_vo = (USER_INFO)session.getAttribute("loginMember");
				List<MATCHING> matList = dao.selectMatchig(u_vo.getID());
				pageContext.setAttribute("matList", matList);
				%>
				<table id="table_box_bootstrap" class="overview-table-cases custom">
				<table class="table table-striped">
				<thread>
					<tr class="overview-table-headers">
						<th>번호</th>
						<th>날짜</th>
						<th>시간</th>
						<th>경기장</th>
						<th>참여인원</th>
						<th>예약/참가취소</th>
						<th>멤버보기</th>
					</tr>
					</thread>
					<tbody>
					<c:forEach var="mat" items="${matList}" varStatus="status">
					<c:set var="matid" value="${mat.USER_ID}"/>
					<c:set var="matnum" value="${mat.MAT_NO}"/>
						<tr>
							<td>${status.count}</td>
							<td><c:out value="${mat.RES_DATE}" /></td>
							<td><c:out value="${mat.RES_TIME}" /></td>
							<td><c:out value="${mat.RES_PLACE}" /></td>
							<td><c:out value="${mat.MAT_MEMBER}" /></td>
							<c:choose>
								<c:when test="${matid eq loginMember.ID}">
									<c:if test="${mat.MAT_CPL eq '1'}">
										<td>취소불가</td>
									</c:if>
									<c:if test="${mat.MAT_CPL eq '0'}">
										<td><button onclick="DelMat(${mat.MAT_NO});">예약취소</button></td>
									</c:if>
								</c:when>
								<c:otherwise>
									<c:if test="${mat.MAT_CPL eq '1'}">
										<td>취소불가</td>
									</c:if>
									<c:if test="${mat.MAT_CPL eq '0'}">
										<td><button onclick="DelMatList('${loginMember.ID}', ${mat.MAT_NO});">참가취소</button></td>
									</c:if>
								</c:otherwise>
								</c:choose>
							 		<td>
										<input type="hidden" name="user_id" value="${mat.USER_ID}">
										<input type="hidden" name="mat_no" value="${mat.MAT_NO}">
										<button id="show" type="button" value="${mat.USER_ID}">멤버보기</button>
									</td>
								</tr>	
						</c:forEach>
						</tbody>
					</table>
				</table>
			</c:otherwise>
		</c:choose>
	</div>
	</form>
   <div id="pager">
   <div id="paginator">
   <button onclick="previousPage()" class="paginator-button" disabled>❮</button>
   <button onclick="showPage(0)" class="paginator-button active-paginator-button">1</button>
   <button onclick="showPage(1)" class="paginator-button">2</button>
   <button onclick="showPage(2)" class="paginator-button">3</button>
   <button onclick="showPage(3)" class="paginator-button">4</button>
   <button onclick="showPage(4)" class="paginator-button">5</button>
   <button onclick="showPage(5)" class="paginator-button">6</button>
   <button onclick="showPage(6)" class="paginator-button">7</button>
   <button onclick="showPage(7)" class="paginator-button">8</button>
   <button onclick="showPage(8)" class="paginator-button">9</button>
   <button onclick="showPage(9)" class="paginator-button">10</button>
   <button onclick="nextPage()" class="paginator-button">❯</button>
   </div>   
   </div>
   
    <script src="./script.js"></script>
   <script type="text/javascript">
   const options = {
            tableId:'easy-table',
            currentPage:1,
            perPage:10,
            autoHeaders:true,
            arrowUp:'⇑',
            arrowDown:'⇓',
            previousText:'&#10094',
            nextText:'&#10095',
        }
   </script>
      <!-- content-->
      <div id="content">

			<!-- 메인으로 이동 BTN-->
			<div class="btn_area">
				<button type="button" id="btnJoin">
<<<<<<< HEAD
					<a href="./RealMain.jsp">매칭 게시판으로 이동</a>
				</button>	
			</div>
      	</div>
=======
					<a href="./RealMain.jsp">매칭 게시판으로 이동</a>
         <!-- 메인으로 이동 BTN-->
         <div class="btn_area">
            <button type="button" id="btnJoin">
               <a href="RealMain.jsp">매칭 게시판으로 이동</a>
            </button>
         </div>
      </div>
>>>>>>> branch 'master' of https://github.com/2022-SMHRD-KDT-BigData-5/bemin.git
      <!-- content-->
<div class="background">
		<div class="window">
			<div class="popup">
				<button id="close">
					<a href="#" class="close-x">X</a>
				</button>				
				<table class="modal-table">
					<!-- 반복 될 구간 -->
					<tr class="tier-table">
						<th>번호</th>
						<th>ID</th>
						<th>이름</th>
						<th>티어</th>
						<th>평가하기</th>
					</tr>	
				<tbody id="showmember">
					
					
				</tbody>
				</table>
				<div class="move-tire">
					<a href="info.jsp" class="tier-ckeck">📢티어정보 확인하기</a>
				</div>

				<div style="margin: 10px 5px 10px 10px;">
					<input id="sub_bt" type="button" value="닫기">
				</div>
			</div>
		</div>
	</div> --> 

   <!-- wrapper -->
   
  


   <script src="assets/js/join1.js"></script>
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
   
   <script>

    // 게시글 삭제(AJax 처리)
    function DelMat(MAT_NO) {
        var query = {delmatNum :MAT_NO};
        var ans = confirm("예약을 취소하시겠습니까?");
        if(!ans) return false;
        
        $.ajax({
            url  : "MatchingCon",
            type : "get",
            data : query,
            success : function(data) {
            	console.log(data);
                alert("예약 취소 성공");
				location.reload();
           		},
            error : function(data) {
				console.log(data);
                alert("예약 취소 실패");
                location.reload();
            }
        });
    }
    // 신청 취소(AJax 처리)
    function DelMatList(id, no) {
        var query = {dellistid : id, dellistno : no};
        var ans = confirm("신청을 취소하시겠습니까?");
        console.log(id, no)
        if(!ans) return false;
        
        $.ajax({
            url  : "MachingListCon",
            type : "get",
            data : query,
            success : function(data) {
            	console.log(data);
                alert("신청 취소 성공");
                location.reload();
            },
            error : function(data) {	
            	console.log(data);
                alert("신청 취소 실패");
                location.reload();
            }
        });
    }    

   </script>
   
   
   <script>
   $(document).on('click', '#show', function(){
	  	let matNO = $(this).prev().val();
		let loginID = $('h1[name=id]').text();
		
		console.log(matNO)
		console.log(loginID)
		
	  $.ajax({
          url  : "JoinMemberCon",
          method  : "get",
          data : {
        	  matNO : matNO
        	  },
          dataType : 'json',
          success : function(data) {
        	  
        	  
        	 let table='';
        		
        	 
        	 for(let i=0;i<data.length;i++){
        		//table += '<form action="tierUpdateCon" method="get">'
        		table += '<tr>';
        		table += '<td>'+ (i+1)+'</td>';
        		table += '<td id="apped_id">'+data[i].ID+'</td>';
      			table += '<td>'+data[i].NAME+'</td>';
      			table += '<td>'+data[i].USER_TIER+'</td>';
				if(data[i].NAME ==loginID){
					table += '<td>본인 평가 불가</td>'
				}else{
				table += '<td>';
				table += '<select id="tier_app" name="pyoung">';
				table += '<option value="50">루키</option>';
				table += '<option value="150">비기너</option>';
				table += '<option value="250">주니어</option>';
				table += '<option value="350">시니어</option>';
				table += '<option value="450">프로</option>';
				table += '<option value="550">플라이트</option>';
				table += '</select>';
				table += '</td><td><input type="submit" value="평가"></td></tr>;
				//table += '</form>'
				}
        	 }	
			console.log(data)
        	document.querySelector('#showmember').innerHTML = table;

          },
          error : function(data) {	

          }
      });	  
	  
   })
   
   
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
		
		$(document).on('click', '#sub_bt', function(){
			let apped_id = $('td[id=apped_id]').text();
			let tier_app = $('selet[id=tier_app]').text();
			let app_id = $('h1[name=id]').text();
			
			$.ajax({
					url : "tierUpdateCon",
				  	method  : "post",
				   	data : {tier_app : tier_app, 
				   			apped_id : apped_id, 
				   			app_id : app_id
				   			},
				    dataType : 'data',
				    
				    success : function(data) {
				    	console.log(data)
				   },error : function(data) {	

				   }
				})
			})
		
	</script>
   
</body>
</html>