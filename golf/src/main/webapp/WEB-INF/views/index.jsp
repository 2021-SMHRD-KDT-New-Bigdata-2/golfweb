<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="kr.golfproject.domain.tbl_member"%>
<%@ page import="kr.golfproject.domain.tbl_upload"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="author" content="Codrops" />
<link rel="shortcut icon" href="favicon.ico">

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>
<link
	href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i"
	rel="stylesheet" />

<script>
	document.documentElement.className = "js";
	var supportsCssVars = function() {
		var e, t = document.createElement("style");
		return t.innerHTML = "root: { --tmp-var: bold; }", document.head
				.appendChild(t),
				e = !!(window.CSS && window.CSS.supports && window.CSS
						.supports("font-weight", "var(--tmp-var)")),
				t.parentNode.removeChild(t), e
	};
	supportsCssVars()
			|| console
					.log("Please view this demo in a modern browser that supports CSS Variables.");
</script>
<!--script src="//tympanus.net/codrops/adpacks/analytics.js"></script-->

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.2/css/swiper.min.css">

<!-- 구글폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">

<!--<link href="style.css" rel="stylesheet" />-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/static/css/mainpage.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/static/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/static/css/app.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/static/css/vendor.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/static/css/app.scss">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/static/css/sidebar.css">
<link
	href="${pageContext.request.contextPath}/resources/static/css/styles.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link
	href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css"
	rel="stylesheet" />

<!-- Theme initialization -->
<script async="" src="https://www.google-analytics.com/analytics.js"></script>
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다
        -->
<title>메인</title>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
<!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
<!--[if lt IE 9]> <script
        src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script> <script
        src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script> <![endif]-->

<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap Icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Google fonts-->
<link
	href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic"
	rel="stylesheet" type="text/css" />
<!-- SimpleLightbox plugin CSS-->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css"
	rel="stylesheet" />

<style>
.carousel-control {
	width: 5%;
	text-shadow: none;
}

.container {
	min-width: 1920px !important;
}

#portfolio .container-fluid, #portfolio .container-sm, #portfolio .container-md,
	#portfolio .container-lg, #portfolio .container-xl, #portfolio .container-xxl
	{
	max-width: 1479px;
}

.container.main-container {
	padding-left: 0;
	padding-right: 0;
}
</style>
</head>

<body class="loaded">

	<div class="main-wrapper">

		<!-- 헤더 -->
		<header class="header">
			<!-- 상단툴바 -->
			<div class="upper-toolbar">
				<div class="upper-tool first-tool">
					<a class="upper-link" href="upload_movie.html">
						<div class="upper-link-text">자세교정받기</div>
					</a>
				</div>
				<div class="upper-tool second-tool">
					<a class="upper-link" href="test_list.html">
						<div class="upper-link-text">나의 교정 목록</div>
					</a>
				</div>
				<div class="upper-tool third-tool">
					<a class="upper-link" href="video_compared.html">
						<div class="upper-link-text">마지막 분석으로</div>
					</a>
				</div>
			</div>
			<!--로그인/회원가입/회원정보가 들어갈 박스-->
			<div class="header-block header-block-nav">
				<!-- 검색창(장식용) -->
				<form class="navbar-form navbar-right" role="search"
					style="top: 25%;">
					<div class="search-bar">
						<input type="text" class="form-control mainpage"
							placeholder="Search">
					</div>
					<div class="search-button">
						<button type="submit" class="btn btn-primary nav_bar search-btn">검색</button>
					</div>
				</form>

				<!-- 로그인을 안 했을시 로그인/회원가입 박스 -->
				<ul class="nav-profile logout_state active" id="logout_state">
					<!-- <a href = "login.html">
							<button class = "btn btn-primary nav_bar login">로그인</button>
						</a>
						<a href = "join.html">
							<button class = "btn btn-primary nav_bar join">회원가입</button>
						</a> -->

					<div class="form-group upright" style="width: 130px;">
						<a href="login.html" class="navbar-link login">로그인</a> <a
							href="join.html" class="navbar-link join">회원가입</a>
					</div>
				</ul>

				<!-- 로그인을 했을시 회원 정보 볼수 있는 박스-->
				<ul class="nav-profile login_state" id="login_state">
					<li class="profile dropdown"><a
						class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
						role="button" aria-haspopup="true" aria-expanded="false">
							<div class="img profile" style="margin-right: 5px;"></div> <span
							class="name" id="profile-name" style="font-size: 16px;">
								${login_name} </span>
					</a>
						<div class="dropdown-menu profile-dropdown-menu"
							aria-labelledby="dropdownMenu1" x-placement="bottom-start"
							style="position: absolute; transform: translate3d(0px, 30px, 0px); top: 0px; left: 0px; will-change: transform;">
							<a class="dropdown-item" href="#"> <i class="fa fa-user icon"></i>
								프로필
							</a> <a class="dropdown-item" href="#"> <i
								class="fa fa-gear icon"></i> 설정
							</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="#" onclick="logout()"> <i
								class="fa fa-power-off icon"></i> 로그아웃
							</a>
						</div></li>
				</ul>
		</header>

		<!--로고와 사이트 이름 배치할 박스-->
		<a href="index.html" class="sidebar-link">
			<div class="sidebar-header" style="z-index: 999">
				<div class="brand">
					<div class="logo">
						<p class="logo_image"></p>
					</div>
					<span class="site_name">GolfBorn</span>
				</div>
			</div>
		</a>

		<!-- 사이드 툴바-->
		<aside class="sidebar">
			<div class="hamburger">
				<div class="line"></div>
				<div class="line"></div>
				<div class="line"></div>
			</div>
			<div class="sidebar-container">

				<!--툴바에 메뉴 배치-->
				<nav class="menu">
					<ul class="sidebar-menu menu metismenu" id="sidebar-menu"
						style="height: 0px;">
						<li class="active open"><a href="index.html"> <i
								class="fa fa-home"></i> 메인페이지
						</a></li>

						<li><a href> <i class="fa fa-th-large"></i> 스윙자세교정 <i
								class="fa arrow"></i>
						</a>
							<ul class="sidebar-nav collapse" style="height: 0px;">
								<li><a href="upload_movie.html"> 자세교정받기 </a></li>
								<li><a href="test_list.html"> 나의 교정 목록 </a></li>
							</ul></li>

						<li class=""><a href=""> <i class="fa fa-bar-chart"></i>
								골프 정보 <i class="fa arrow"></i>
						</a>
							<ul class="sidebar-nav collapse" style="height: 0px;">
								<li><a href="plot_chart.html"> 정보1 </a></li>
								<li><a href="charts-morris.html"> 정보2 </a></li>
							</ul></li>
					</ul>
				</nav>
			</div>
			<svg version="1.1" id="blob" xmlns="http://www.w3.org/2000/svg"
				xmlns:xlink="http://www.w3.org/1999/xlink">
					<path id="blob-path"
					d="M60,500H0V0h60c0,0,20,172,20,250S60,900,60,500z" />
				</svg>
		</aside>

		<section class="main-contents" style="margin-bottom: 110px;">
			<article>
				<section>
					<!-- main-container -->
					<div class="container main-container">
						<div class="center-block">
							<div id="carousel-golf-generic" class="carousel slide"
								data-ride="carousel"
								style="width: 1920px; height: 700px;">
								<!-- Indicators -->
								<ol class="carousel-indicators">
									<li data-target="#carousel-golf-generic" data-slide-to="0"
										class="active"></li>
									<li data-target="#carousel-golf-generic" data-slide-to="1"></li>
								</ol>

								<!-- Wrapper for slides -->
								<div class="carousel-inner" role="listbox"
									style="width: 1920px; height: 700px;">
									<div class="item active">
										<center>
											<video style="width:1920px" class="img-fluid" autoplay loop muted>
												<source alt="..." data-pause=""
													src="${pageContext.request.contextPath}/resources/static/images/메인2.mp4"
													type="video/mp4" />
											</video>
										</center>
										<div class="carousel-caption" style="color: black"></div>
									</div>
									<div class="item">
										<center>
											<video style="width:1920px" class="img-fluid" autoplay loop muted ">
												<source alt="..." data-pause=""
													src="${pageContext.request.contextPath}/resources/static/images/메인1.mp4"
													type="video/mp4" />
											</video>
										</center>
										<div class="carousel-caption"></div>
									</div>
								</div>

								<!-- Controls -->
								<a class="left carousel-control" href="#carousel-golf-generic"
									role="button" data-slide="prev"> <span
									class="glyphicon glyphicon-chevron-left"></span> <span
									class="sr-only">Previous</span>
								</a> <a class="right carousel-control" href="#carousel-golf-generic"
									role="button" data-slide="next"> <span
									class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
									<span class="sr-only">Next</span>
								</a>
							</div>
						</div>
					</div>
				</section>
			</article>
		</section>

		<section>
			<div class="text_box">
				<span class="text"></span><span class="blink">|</span>
			</div>
		</section>

		<!-- Content section 1-->
		<section id="scroll" style="margin-left: 350px">
			<div class="container px-5">
				<div class="row gx-5 align-items-center">
					<div class="col-lg-4 order-lg-2">
						<div class="p-5">
							<img
								src="${pageContext.request.contextPath}/resources/static/images/golf1920_4.PNG"
								style="width: 700px; height: 500px; border-radius: 30px;">
						</div>
					</div>
					<div class="col-lg-4 order-lg-1">
						<div class="p-5">
							<h3 class="display-3" style="font-size: 3rem;">
								<strong>나의 스윙 자세를 보고 싶다면?</strong>
							</h3>
							<p style="font-size: 22px">골프본은 영상만 올리면 알아서 쉽고 간편하게!</p>
							&nbsp;&nbsp;
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Content section 2-->
		<section style="margin-right: -530px">
			<div class="container px-5">
				<div class="row gx-5 align-items-center">
					<div class="col-lg-4">
						<div class="p-5">
							<img
								src="${pageContext.request.contextPath}/resources/static/images/딥러닝.png"
								style="width: 700px; height: 500px; border-radius: 30px;">
						</div>
					</div>
					<div class="col-lg-4" style="right: -105px;">
						<div class="p-5">
							<h3 class="display-3" style="font-size: 3rem;">
								<strong>나도 프로처럼!</strong>
							</h3>
							<p style="font-size: 22px">골프본은 영상만 올리면 알아서 쉽고 간편하게!</p>
							&nbsp;&nbsp;
							<p style="font-size: 22px">프로의 스윙 데이터를 바탕으로!</p>
							&nbsp;
							<p style="font-size: 22px">스윙 자세를 선으로 연결해서 한눈에 볼 수 있어요</p>
							&nbsp;&nbsp;
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Content section 3-->
		<section id="scroll" style="margin-left: 350px">
			<div class="container px-5">
				<div class="row gx-5 align-items-center">
					<div class="col-lg-4 order-lg-2">
						<div class="p-5">
							<img
								src="${pageContext.request.contextPath}/resources/static/images/_116.jpg"
								style="width: 700px; height: 500px; border-radius: 30px;">
						</div>
					</div>
					<div class="col-lg-4 order-lg-1">
						<div class="p-5">
							<h3 class="display-3" style="font-size: 3rem;">
								<strong>프로와 다른 자세를 알려주는 코멘트</strong>
							</h3>
							<p style="font-size: 22px">내가 틀린 자세를 상세하게 알 수 있어요!</p>
							&nbsp; &nbsp;
							<p style="font-size: 22px">마이페이지에 저장해서 언제든지 다시보기</p>
							&nbsp;
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- About-->
		<section class="page-section"
			style="background-color: #44bd32; padding: 30px 0 20px 0px; position: absolute; bottom: -1780px;"
			id="about">
			<div class="container px-4 px-lg-5">
				<div class="row gx-4 gx-lg-5 justify-content-center">
					<div class="col-lg-8 text-center">
						<h3 class="text-white mt-0">골프본의 회원이 되어보세요!</h3>
						<hr class="divider divider-light" />
						<p class="text-white-75 mb-4"></p>
						<a class="btn btn-light btn-xl" href="join.html">회원가입 하러가기</a>
					</div>
				</div>
			</div>
		</section>
	</div>

	<!-- 사이드 툴바-->
	<aside class="sidebar"></aside>
	<footer></footer>
	<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
	<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

	<script
		src="${pageContext.request.contextPath}/resources/static/javascript/vendor.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/static/javascript/app.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/static/javascript/upload.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/static/javascript/member.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/static/javascript/sidebar.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/static/javascript/deep_learning.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/static/javascript/mainpage.js"></script>

	<script
		src="${pageContext.request.contextPath}/resources/static/javascript/scripts.js"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>


	<script>
	$(function() {
		var check_login_state = null;
		var ls = "<%=session.getAttribute("login_state")%>";
	 	if(ls != null){
			check_login_state = ls;
		} else {
			check_login_state = "N";
		}; 
		
		if(check_login_state=="Y"){
	    	// 로그인 상태박스에 active클래스 부여/ 로그아웃 상태 박스에서는 삭제
	        $("#login_state").addClass("active");
	        $("#logout_state").removeClass("active");
	    }else{
	    	// 로그아웃 상태박스에 active클래스 부여/ 로그인 상태 박스에서는 삭제
	        $("#logout_state").addClass("active");
	        $("#login_state").removeClass("active");
      	};
	});
	</script>

	<script>
		function logout() {
			$.ajax({
				url : "${cpath}/tbl_member_Logout.do",
				success : function() {
					window.sessionStorage.setItem("login_state", "N");
					location.href = "index.html";
				},
			});
		}
	</script>

	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- SimpleLightbox plugin JS-->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.js"></script>
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>


</html>