<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.golfproject.domain.tbl_member"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>

<!doctype html>
<html class="no-js" lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title> Title </title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- 구글폰트 -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/app.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/vendor.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/app.scss">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/sidebar.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<!-- Theme initialization -->
	<script async="" src="https://www.google-analytics.com/analytics.js"></script>
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
						<a class = "upper-link" href = "info1.html">
							<div class = "upper-link-text">골프 정보</div>
						</a>
					</div>
				</div>
				<!--로그인/회원가입/회원정보가 들어갈 박스-->
				<div class="header-block header-block-nav">
					<!-- 검색창(장식용) -->
					<form class="navbar-form navbar-right" role="search">
						<div class="search-bar">
							<input type="text" class="form-control mainpage" placeholder="Search">
						</div>
						<div class="search-button">
							<button type="submit" class="btn btn-primary nav_bar search-btn">검색</button>
						</div>
					</form>

					<!-- 로그인을 안 했을시 로그인/회원가입 박스 -->
					<ul class="nav-profile logout_state active" id ="logout_state">
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
						<li class="profile dropdown">
							<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
								<div class="img profile" style="margin-right: 5px;"> </div>
								<span class="name" id="profile-name"> ${login_name} </span>
							</a>
							<div class="dropdown-menu profile-dropdown-menu" aria-labelledby="dropdownMenu1" x-placement="bottom-start" style="position: absolute; transform: translate3d(0px, 30px, 0px); top: 0px; left: 0px; will-change: transform;">
								<a class="dropdown-item" href="#">
									<i class="fa fa-user icon"></i> 프로필 </a>
								<a class="dropdown-item" href="#">
									<i class="fa fa-gear icon"></i> 설정 </a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#" onclick="logout()">
									<i class="fa fa-power-off icon"></i> 로그아웃 </a>
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
			<aside class="sidebar fixed">
				<div class="hamburger">
					<div class="line"></div>
					<div class="line"></div>
					<div class="line"></div>
				</div>
				<div class="sidebar-container">
					
					<!--툴바에 메뉴 배치-->
					<nav class = "menu">
						<ul class = "sidebar-menu menu metismenu" id="sidebar-menu"  style="height: 0px;">
							<li>
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
								<ul class="sidebar-nav collapse"  style="height: 0px;">
									<li>
										<a href="upload_movie.html"> 자세교정받기 </a>
									</li>
									<li>
										<a href="test_list.html"> 나의 교정 목록 </a>
									</li>
								</ul>
							</li>

							<li class = "active open">
								<a href="">
									<i class="fa fa-bar-chart"></i> 골프 정보
									<i class="fa arrow"></i>
								</a>
								<ul class="sidebar-nav collapse in">
									<li class = "active">
										<a href="info1.html"> 골프 영상 </a>
									</li>
									<li>
										<a href="golf_info_image.html"> 골프 상식 </a>
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

            <article class="content items-list-page">
                    <div class="title-search-block">
                        <div class="title-block">
                            <div class="row">
                                <div class="col-md-6">
                                    <h3 class="title"> 골프 정보</h3>
                                </div>
                            </div>
                        </div>
                        <div class="items-search">
                            <form class="form-inline">
                                <div class="input-group">
                                    <input type="text" class="form-control boxed rounded-s" placeholder="Search for...">
                                    <span class="input-group-btn">
                                        <button class="btn btn-secondary rounded-s" type="button">
                                            <i class="fa fa-search"></i>
                                        </button>
                                    </span>
                                </div>
                            </form>
                        </div>
                    </div>

                    <!-- 목록리스트 박스 -->
                    <div class="list-container">
                        <div class="first_row">
                            <div class="movie_column first_column videono01" id="block_1" style="visibility:visible">
								<a href="" class="movie_link movie_link1">
									<div class="videobox_list">
										<video id="video1" class="list_video" controls preload>
											<source id="movie_src1" type="video/mp4" src="${pageContext.request.contextPath}/resources/static/movie/test3.mp4"/>
										</video>
										<div class="analysis_list-textbox" id="analysis_list-textbox">
											<div><span>선수 이름명</span></div>
											<div class="analysis_list-writer infopage">정보1</div>
											<div class="analysis_list-swingtype infopage">정보2</div>
											<div class="analysis_list-timecost infopage">정보3</div>
											<div class="analysis_list-accuracy infopage">정보4</div>
											<div class="analysis_list-date infopage">정보5</div>
										</div>
									</div>
								</a>
                            </div>
                            <div class="movie_column second_column videono02" id="block_2" style="visibility:visible">
								<a href="" class="movie_link movie_link2">
									<div class="videobox_list">
										<video id="video2" class="list_video" muted>
											<source id="movie_src2" type="video/mp4" src="${pageContext.request.contextPath}/resources/movie/01c9eb10-1cf9-4c0c-8e6c-83107b2c76cc-test3.mp4"/>
										</video>
										<div class="analysis_list-textbox" id="analysis_list-textbox">
											<div><span>선수 이름명</span></div>
											<div class="analysis_list-writer infopage">정보1</div>
											<div class="analysis_list-swingtype infopage">정보2</div>
											<div class="analysis_list-timecost infopage">정보3</div>
											<div class="analysis_list-accuracy infopage">정보4</div>
											<div class="analysis_list-date infopage">정보5</div>
										</div>
									</div>
								</a>
                            </div>
                            <div class="movie_column third_column videono03" id="block_3" style="visibility:visible">
								<a href="" class="movie_link movie_link3">
									<div class="videobox_list">
										<video id="video3" class="list_video" muted>
											<source id="movie_src3" type="video/mp4" src="${pageContext.request.contextPath}/resources/movie/01c9eb10-1cf9-4c0c-8e6c-83107b2c76cc-test3.mp4"/>
										</video>
										<div class="analysis_list-textbox" id="analysis_list-textbox">
											<div><span>선수 이름명</span></div>
											<div class="analysis_list-writer infopage">정보1</div>
											<div class="analysis_list-swingtype infopage">정보2</div>
											<div class="analysis_list-timecost infopage">정보3</div>
											<div class="analysis_list-accuracy infopage">정보4</div>
											<div class="analysis_list-date infopage">정보5</div>
										</div>
									</div>
								</a>
                            </div>
                        </div>
                        <div class="second_row">
                            <div class="movie_column first_column videono04" id="block_4" style="visibility:visible">
								<a href="" class="movie_link movie_link4">
									<div class="videobox_list">
										<video id="video4" class="list_video" muted>
											<source id="movie_src4" type="video/mp4" src="${pageContext.request.contextPath}/resources/movie/01c9eb10-1cf9-4c0c-8e6c-83107b2c76cc-test3.mp4"/>
										</video>
										<div class="analysis_list-textbox" id="analysis_list-textbox">
											<div><span>선수 이름명</span></div>
											<div class="analysis_list-writer infopage">정보1</div>
											<div class="analysis_list-swingtype infopage">정보2</div>
											<div class="analysis_list-timecost infopage">정보3</div>
											<div class="analysis_list-accuracy infopage">정보4</div>
											<div class="analysis_list-date infopage">정보5</div>
										</div>
									</div>
								</a>
                            </div>
                            <div class="movie_column second_column videono05" id="block_5" style="visibility:visible">
								<a href="" class="movie_link movie_link5">
									<div class="videobox_list">
										<video id="video5" class="list_video" muted>
											<source id="movie_src5" type="video/mp4" src="${pageContext.request.contextPath}/resources/movie/01c9eb10-1cf9-4c0c-8e6c-83107b2c76cc-test3.mp4"/>
										</video>
										<div class="analysis_list-textbox" id="analysis_list-textbox">
											<div><span>선수 이름명</span></div>
											<div class="analysis_list-writer infopage">정보1</div>
											<div class="analysis_list-swingtype infopage">정보2</div>
											<div class="analysis_list-timecost infopage">정보3</div>
											<div class="analysis_list-accuracy infopage">정보4</div>
											<div class="analysis_list-date infopage">정보5</div>
										</div>
									</div>
								</a>
                            </div>
                            <div class="movie_column third_column videono06" id="block_6" style="visibility:visible">
								<a href="" class="movie_link movie_link6">
									<div class="videobox_list">
										<video id="video6" class="list_video" muted>
											<source id="movie_src6" type="video/mp4" src="${pageContext.request.contextPath}/resources/movie/01c9eb10-1cf9-4c0c-8e6c-83107b2c76cc-test3.mp4"/>
										</video>
										<div class="analysis_list-textbox" id="analysis_list-textbox">
											<div><span>선수 이름명</span></div>
											<div class="analysis_list-writer infopage">정보1</div>
											<div class="analysis_list-swingtype infopage">정보2</div>
											<div class="analysis_list-timecost infopage">정보3</div>
											<div class="analysis_list-accuracy infopage">정보4</div>
											<div class="analysis_list-date infopage">정보5</div>
										</div>
									</div>
								</a>
                            </div>
                        </div>
                    </div>
                    
                    <!-- 페이지 번호를 저장하는 숨은 창 -->
                    <div class="hidden_pgnum" id = "present_pgnum">1</div>
                    <!-- 페이지 박스 -->
                    <nav class="text-right">
                        <ul class="pagination">
                            <li class="page_item">
                                <a class="page_link" onclick=""> Prev </a>
                            </li>
                            <li class="page_item">
                                <a class="page_link active" id="page-link-num1" style="color: #fff;" onclick="move_page_num(document.getElementById('page-link-num1').innerHTML,document.getElementById('present_pgnum').innerHTML)">1</a>
                            </li>
                            <li class="page_item">
                                <a class="page_link" id="page-link-num2" onclick="move_page_num(document.getElementById('page-link-num2').innerHTML,document.getElementById('present_pgnum').innerHTML)">2</a>
                            </li>
                            <li class="page_item">
                                <a class="page_link" id="page-link-num3" onclick="move_page_num(document.getElementById('page-link-num3').innerHTML,document.getElementById('present_pgnum').innerHTML)">3</a>
                            </li>
                            <li class="page_item">
                                <a class="page_link" id="page-link-num4" onclick="move_page_num(document.getElementById('page-link-num4').innerHTML,document.getElementById('present_pgnum').innerHTML)">4</a>
                            </li>
                            <li class="page_item">
                                <a class="page_link" id="page-link-num5" onclick="move_page_num(document.getElementById('page-link-num5').innerHTML,document.getElementById('present_pgnum').innerHTML)">5</a>
                            </li>
                            <li class="page_item">
                                <a class="page_link" id="page-link-num6" onclick="move_page_num(document.getElementById('page-link-num6').innerHTML,document.getElementById('present_pgnum').innerHTML)">6</a>
                            </li>
                            <li class="page_item">
                                <a class="page_link" id="page-link-num7" onclick="move_page_num(document.getElementById('page-link-num7').innerHTML,document.getElementById('present_pgnum').innerHTML);loadlist();">7</a>
                            </li>
                            <li class="page_item">
                                <a class="page_link" id="page-link-num8" onclick="move_page_num(document.getElementById('page-link-num8').innerHTML,document.getElementById('present_pgnum').innerHTML);loadlist();">8</a>
                            </li>
                            <li class="page_item">
                                <a class="page_link" id="page-link-num9" onclick="move_page_num(document.getElementById('page-link-num9').innerHTML,document.getElementById('present_pgnum').innerHTML);loadlist();">9</a>
                            </li>
                            <li class="page_item">
                                <a class="page_link" id="page-link-num10" onclick="move_page_num(document.getElementById('page-link-num10').innerHTML,document.getElementById('present_pgnum').innerHTML);loadlist();">10</a>
                            </li>
                            <li class="page_item">
                                <a class="page_link" onclick=""> Next </a>
                            </li>
                        </ul>
                    </nav>
                </article>
		</div>
	</div>
	
		<!--사용할 자바스크립트, js파일 임포트하는 부분-->
	<script>
		(function(i, s, o, g, r, a, m)
		{
			i['GoogleAnalyticsObject'] = r;
			i[r] = i[r] || function()
			{
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date();
			a = s.createElement(o),
				m = s.getElementsByTagName(o)[0];
			a.async = 1;
			a.src = g;
			m.parentNode.insertBefore(a, m)
		})(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');
		ga('create', 'UA-80463319-4', 'auto');
		ga('send', 'pageview');
	</script>
	<script src="${pageContext.request.contextPath}/resources/static/javascript/vendor.js"></script>
	<script src="${pageContext.request.contextPath}/resources/static/javascript/app.js"></script>
	<script src="${pageContext.request.contextPath}/resources/static/javascript/upload.js"></script>
	<script src="${pageContext.request.contextPath}/resources/static/javascript/member.js"></script>
	<script src="${pageContext.request.contextPath}/resources/static/javascript/sidebar.js"></script>
    <script src="${pageContext.request.contextPath}/resources/static/javascript/list_analysis.js"></script>
    
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
	        $("#hidden-text-box").css({
	        	"visibility":"hidden",
	        });
	    }else{
	    	// 로그아웃 상태박스에 active클래스 부여/ 로그인 상태 박스에서는 삭제
	        $("#logout_state").addClass("active");
	        $("#login_state").removeClass("active");
	        $("#hidden-text-box").css({
	        	"visibility":"visible",
	        });
      	};
	});
	</script>
	
	<script>
	function maintain_login(){
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
	};
	</script>
	
    <script>
	function logout(){
		$.ajax({
        	url : "${cpath}/tbl_member_Logout.do",
        	success : function(){
        		window.sessionStorage.setItem("login_state","N");
        		location.href = "index.html";
        	},
    	});
	};
	</script>
	
	<script>
	$("#page-link-num1").click(function(){
		loadlist();
	});
	$("#page-link-num2").click(function(){
		loadlist();
	});
	$("#page-link-num3").click(function(){
		loadlist();
	});
	$("#page-link-num4").click(function(){
		loadlist();
	});
	$("#page-link-num5").click(function(){
		loadlist();
	});
	$("#page-link-num6").click(function(){
		loadlist();
	});
	$("#page-link-num7").click(function(){
		loadlist();
	});
	$("#page-link-num8").click(function(){
		loadlist();
	});
	$("#page-link-num9").click(function(){
		loadlist();
	});
	$("#page-link-num10").click(function(){
		loadlist();
	});
	</script>
	
	
</body>
</html>