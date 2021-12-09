<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    
    <!-- 구글폰트 -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    
    <!--<link href="style.css" rel="stylesheet" />-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/mainpage.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/app.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/vendor.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/app.scss">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/sidebar.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- Theme initialization -->
	<script async="" src="https://www.google-analytics.com/analytics.js"></script>
    <!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다
        -->
    <title>메인</title>

    <!-- 부트스트랩 -->
    <!--<link href="css/bootstrap.min.css" rel="stylesheet">-->

    <!-- 합쳐지고 최소화된 최신 CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <!-- 부가적인 테마 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

    <!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
    <!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
    <!--[if lt IE 9]> <script
        src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script> <script
        src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script> <![endif]-->
</head>

<body class = "loaded">
	<div class = "main-wrapper">
		<div class = "app" id = "app">
						<!-- 헤더 -->
			<header class = "header">
				<!-- 상단툴바 -->
				<div class = "upper-toolbar">
					<div class= "upper-tool first-tool">
						<a class = "upper-link" href = "upload_movie.html">
							<div class = "upper-link-text">자세교정받기</div>
						</a>
					</div>
					<div class= "upper-tool second-tool">
						<a class = "upper-link" href = "test_list.html">
							<div class = "upper-link-text">나의 교정 목록</div>
						</a>
					</div>
					<div class= "upper-tool third-tool">
						<a class = "upper-link" href = "video_compared.html">
							<div class = "upper-link-text">골프 정보</div>
						</a>
					</div>
				</div>
				<!--로그인/회원가입/회원정보가 들어갈 박스-->
				<div class="header-block header-block-nav">
					<!-- 검색창(장식용) -->
					<form class="navbar-form navbar-right" role="search" style="top: 25%;">
						<div class="search-bar">
							<input type="text" class="form-control mainpage" placeholder="Search">
						</div>
						<div class="search-button">
							<button type="button" class="btn btn-primary nav_bar search-btn">검색</button>
						</div>
					</form>

					<!-- 로그인을 안 했을시 로그인/회원가입 박스 -->
					<ul class="nav-profile logout_state" id ="logout_state">
						<!-- <a href = "login.html">
							<button class = "btn btn-primary nav_bar login">로그인</button>
						</a>
						<a href = "join.html">
							<button class = "btn btn-primary nav_bar join">회원가입</button>
						</a> -->

						<div class="form-group upright" style="width: 130px;">
							<a href="login.html" class="navbar-link login">로그인</a>
							<a href="join.html" class="navbar-link join">회원가입</a>
						</div>
					</ul>

					<!-- 로그인을 했을시 회원 정보 볼수 있는 박스-->
					<ul class="nav-profile login_state" id ="login_state">
						<li class="notifications new">
							<a href="" data-toggle="dropdown" aria-expanded="false">
								<i class="fa fa-bell-o"></i>
								<sup>
									<span class="counter">3</span>
								</sup>
							</a>
							<div class="dropdown-menu notifications-dropdown-menu" x-placement="bottom-start" style="position: absolute; transform: translate3d(0px, 25px, 0px); top: 0px; left: 0px; will-change: transform;">
								<ul class="notifications-container">
									<li>
										<a href="" class="notification-item">
											<div class="img-col">
												<div class="img" style="background-image: url('assets/faces/3.jpg')"></div>
											</div>
											<div class="body-col">
												<p>
													<span class="accent">Zack Alien</span> pushed new commit:
													<span class="accent">Fix page load performance issue</span>. </p>
											</div>
										</a>
									</li>
									<li>
										<a href="" class="notification-item">
											<div class="img-col">
												<div class="img" style="background-image: url('assets/faces/5.jpg')"></div>
											</div>
											<div class="body-col">
												<p>
													<span class="accent">Amaya Hatsumi</span> started new task:
													<span class="accent">Dashboard UI design.</span>. </p>
											</div>
										</a>
									</li>
									<li>
										<a href="" class="notification-item">
											<div class="img-col">
												<div class="img" style="background-image: url('assets/faces/8.jpg')"></div>
											</div>
											<div class="body-col">
												<p>
													<span class="accent">Andy Nouman</span> deployed new version of
													<span class="accent">NodeJS REST Api V3</span>
												</p>
											</div>
										</a>
									</li>
								</ul>
								<footer>
									<ul>
										<li>
											<a href=""> View All </a>
										</li>
									</ul>
								</footer>
							</div>
						</li>
						<li class="profile dropdown">
							<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
								<div class="img" style="background-image: url('https://avatars3.githubusercontent.com/u/3959008?v=3&amp;s=40')"> </div>
								<span class="name"> John Doe </span>
							</a>
							<div class="dropdown-menu profile-dropdown-menu" aria-labelledby="dropdownMenu1" x-placement="bottom-start" style="position: absolute; transform: translate3d(0px, 30px, 0px); top: 0px; left: 0px; will-change: transform;">
								<a class="dropdown-item" href="#">
									<i class="fa fa-user icon"></i> Profile </a>
								<a class="dropdown-item" href="#">
									<i class="fa fa-bell icon"></i> Notifications </a>
								<a class="dropdown-item" href="#">
									<i class="fa fa-gear icon"></i> Settings </a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#" onclick="logout()">
									<i class="fa fa-power-off icon"></i> Logout </a>
							</div>
						</li>
					</ul>
				</div>
			</header>
			
			<!--로고와 사이트 이름 배치할 박스-->
			<a href="index.html" class="sidebar-link">
				<div class = "sidebar-header">
					<div class="brand">
						<div class="logo">
							<p class = "logo_image"></p>
						</div>
						<span class = "site_name">GolfBorn</span>
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
					<nav class = "menu">
						<ul class = "sidebar-menu menu metismenu" id="sidebar-menu"  style="height: 0px;">
							<li class = "active open">
								<a href="index.html">
									<i class="fa fa-home"></i>
									메인페이지
								</a>
							</li>

							<li>
								<a href>
									<i class="fa fa-th-large"></i>
									스윙자세교정
									<i class="fa arrow"></i>
								</a>
								<ul class="sidebar-nav collapse" style="height: 0px;">
									<li>
										<a href="upload_movie.html"> 자세교정받기 </a>
									</li>
									<li>
										<a href="test_list.html"> 나의 교정 목록 </a>
									</li>
								</ul>
							</li>

							<li class="">
								<a href="">
									<i class="fa fa-bar-chart"></i> 골프 정보
									<i class="fa arrow"></i>
								</a>
								<ul class="sidebar-nav collapse" style="height: 0px;">
									<li>
										<a href="plot_chart.html"> 정보1 </a>
									</li>
									<li>
										<a href="charts-morris.html"> 정보2 </a>
									</li>
								</ul>
							</li>
						</ul>
					</nav>
				</div>
				<svg version="1.1" id="blob" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
					<path id="blob-path" d="M60,500H0V0h60c0,0,20,172,20,250S60,900,60,500z" />
				</svg>
			</aside>
			<h2></h2>

    <section class="main-contents">
        <article>
            <section>
                <div class="text_box">
                    <span class="text"></span><span class="blink">|</span>
                </div>

                <!-- main-container -->
                <div class="container main-container">
                    <div class="center-block">
                        <div id="carousel-golf-generic" class="carousel slide" data-ride="carousel"
                            style="width: 1200px; height: 700px;">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-golf-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-golf-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-golf-generic" data-slide-to="2"></li>
                                <li data-target="#carousel-golf-generic" data-slide-to="3"></li>
                                <li data-target="#carousel-golf-generic" data-slide-to="4"></li>
                            </ol>

                            <!-- Wrapper for slides -->
                            <div class="carousel-inner" role="listbox" style="width: 1200px; height: 700px;">
                                <div class="item active">
                                    <center><img src="${pageContext.request.contextPath}/resources/static/images/12313.png" alt="..." data-pause=""></center>
                                    <div class="carousel-caption" style="color: black"></div>

                                </div>
                                <div class="item">
                                    <center><img src="${pageContext.request.contextPath}/resources/static/images/1.jpg" alt="..." data-pause=""></center>
                                    <div class="carousel-caption"></div>
                                </div>
                                <div class="item">
                                    <center><img src="${pageContext.request.contextPath}/resources/static/images/1.jpg" alt="..." data-pause=""></center>
                                    <div class="carousel-caption"></div>
                                </div>
                                <div class="item">
                                    <center><img src="${pageContext.request.contextPath}/resources/static/images/1.jpg" alt="..." data-pause=""></center>
                                    <div class="carousel-caption"></div>
                                </div>
                                <div class="item">
                                    <center><img src="${pageContext.request.contextPath}/resources/static/images/1.jpg" alt="..." data-pause=""></center>
                                    <div class="carousel-caption"></div>
                                </div>
                            </div>

                            <!-- Controls -->
                            <a class="left carousel-control" href="#carousel-golf-generic" role="button"
                                data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="right carousel-control" href="#carousel-golf-generic" role="button"
                                data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                    </div>
                </div>
            </section>
            <p>
                <center>
                    <h3>가장 혁신적인 AI 골프 분석 서비스 OOO</h3>
                </center>
            </p>
        </article>
        <article>
            <header>
                <center><img src="${pageContext.request.contextPath}/resources/static/images/1.jpg" alt="..." class="img-rounded"></center>
            </header>
            <section>
                <p>
                    <center>
                        <br><br><br><br>
                        <h3>나의 자세와 궤적을 한번에! 한눈에! 빠르게!</h3>
                    </center>
                </p>
            </section>
        </article>

        <article>
            <header>
                <center><img src="${pageContext.request.contextPath}/resources/static/images/1.jpg" alt="..." class="img-rounded"></center>
            </header>
            <section>
                <p>
                    <center>
                        <h3>각 구분 동작에 따라 코칭을 한눈에!</h3>
                    </center>
                </p>
                <p>
                    <center>
                        <h3>자세를 클릭하면 구분동작까지!</h3>
                    </center>
                </p>
            </section>
        </article>

        <article>
            <header>
                <center><img src="${pageContext.request.contextPath}/resources/static/images/1.jpg" alt="..." class="img-rounded"></center>
            </header>
            <section>
                <p>
                    <center>
                        <h3>백스윙 자세에서 오른팔이 너무 많이 굽혀져 있습니다. </h3>
                    </center>
                </p>
                <p>
                    <center>
                        <h3>오른팔을 멀리 가져가면서 백스윙을 해보세요!</h3>
                    </center>
                </p>
                <p>
                    <center>
                        <h3> 어드레스를 클릭해보세요!</h3>
                    </center>
                </p>
            </section>
        </article>

        <article>
            <header>
                <center><img src="${pageContext.request.contextPath}/resources/static/images/1.jpg" alt="..." class="img-rounded"></center>
            </header>
            <section>
                <p>
                    <center>
                        <h3>어드레스자세에서 머리가 너무 많이 움직입니다. 의식하고 고정해주세요.</h3>
                    </center>
                </p>
                <p>
                    <center>
                        <h3>임팩트 자세에서 머리가 공을 향하지 않습니다.</h3>
                    </center>
                </p>
            </section>
        </article>


    </section>


    <!-- 사이드 툴바-->
    <aside class="sidebar">

    </aside>
    <footer>Footer Information</footer>
    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

    <script src="${pageContext.request.contextPath}/resources/static/javascript/vendor.js"></script>
	<script src="${pageContext.request.contextPath}/resources/static/javascript/app.js"></script>
	<script src="${pageContext.request.contextPath}/resources/static/javascript/upload.js"></script>
	<script src="${pageContext.request.contextPath}/resources/static/javascript/member.js"></script>
    <script src="${pageContext.request.contextPath}/resources/static/javascript/mainpage.js"></script>
	<script src="${pageContext.request.contextPath}/resources/static/javascript/sidebar.js"></script>
</body>


</html>