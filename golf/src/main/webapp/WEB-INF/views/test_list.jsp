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
						<a class = "upper-link" href = "video_compared.html">
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

							<li class = "active open">
								<a href>
									<i class="fa fa-th-large"></i>
									스윙자세교정
									<i class="fa arrow"></i>
								</a>
								<ul class="sidebar-nav collapse in">
									<li>
										<a href="upload_movie.html"> 자세교정받기 </a>
									</li>
									<li class = "active">
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

            <article class="content items-list-page">
                    <div class="title-search-block">
                        <div class="title-block">
                            <div class="row">
                                <div class="col-md-6">
                                    <h3 class="title"> 자세교정목록</h3>
                                    <p class="title-description"> 코멘트. </p>
                                </div>
								<div class="create_new">
									<a href="upload_movie.html">
										<button type="button" class="btn btn-primary create_new">새로 만들기</button>
									</a>
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
                            <div class="movie_column first_column videono01" id="block_1">
								<a href="" class="movie_link movie_link1">
									<div class="videobox_list">
										<video id="video1" class="list_video" muted>
											<source id="movie_src1" type="video/mp4" src=""/>
										</video>
										<div class="analysis_list-textbox" id="analysis_list-textbox">
											<div class="analysis_list-title">시험용 타이틀 1 길이조정길이조정길이조정길이조정길이조정길이조정길이조정길이조정</div>
											<div class="analysis_list-writer">작성자1 길이조정길이조정길이조정길이조정길이조정길이조정길이조정</div>
											<div class="analysis_list-swingtype">드라이버</div>
											<div class="analysis_list-timecost">소요시간: 1h 30m 20s</div>
											<div class="analysis_list-accuracy">Acc:100%</div>
											<div class="analysis_list-date">2021.05.10 14:00</div>
										</div>
									</div>
								</a>
                            </div>
                            <div class="movie_column second_column videono02" id="block_2">
								<a href="" class="movie_link movie_link2">
									<div class="videobox_list">
										<video id="video2" class="list_video" muted>
											<source id="movie_src2" type="video/mp4" src=""/>
										</video>
										<div class="analysis_list-textbox">
											<div class="analysis_list-title">시험용 타이틀 2 길이조정길이조정길이조정길이조정길이조정길이조정길이조정길이조정</div>
											<div class="analysis_list-writer">작성자2 길이조정길이조정길이조정길이조정길이조정길이조정길이조정</div>
											<div class="analysis_list-swingtype">드라이버</div>
											<div class="analysis_list-timecost">소요시간: 1h 30m 20s</div>
											<div class="analysis_list-accuracy">Acc:100%</div>
											<div class="analysis_list-date">2021.05.10 14:00</div>
										</div>
									</div>
								</a>
                            </div>
                            <div class="movie_column third_column videono03" id="block_3">
								<a href="" class="movie_link movie_link3">
									<div class="videobox_list">
										<video id="video3" class="list_video" muted>
											<source id="movie_src3" type="video/mp4" src=""/>
										</video>
										<div class="analysis_list-textbox">
											<div class="analysis_list-title">시험용 타이틀 3 길이조정길이조정길이조정길이조정길이조정길이조정길이조정길이조정</div>
											<div class="analysis_list-writer">작성자3 길이조정길이조정길이조정길이조정길이조정길이조정길이조정</div>
											<div class="analysis_list-swingtype">드라이버</div>
											<div class="analysis_list-timecost">소요시간: 1h 30m 20s</div>
											<div class="analysis_list-accuracy">Acc:100%</div>
											<div class="analysis_list-date">2021.05.10 14:00</div>
										</div>
									</div>
								</a>
                            </div>
                        </div>
                        <div class="second_row">
                            <div class="movie_column first_column videono04" id="block_4">
								<a href="" class="movie_link movie_link4">
									<div class="videobox_list">
										<video id="video4" class="list_video" muted>
											<source id="movie_src4" type="video/mp4" src=""/>
										</video>
										<div class="analysis_list-textbox">
											<div class="analysis_list-title">시험용 타이틀 4 길이조정길이조정길이조정길이조정길이조정길이조정길이조정길이조정</div>
											<div class="analysis_list-writer">작성자4 길이조정길이조정길이조정길이조정길이조정길이조정길이조정</div>
											<div class="analysis_list-swingtype">아이언</div>
											<div class="analysis_list-timecost">소요시간: 1h 30m 20s</div>
											<div class="analysis_list-accuracy">Acc:100%</div>
											<div class="analysis_list-date">2021.05.10 14:00</div>
										</div>
									</div>
								</a>
                            </div>
                            <div class="movie_column second_column videono05" id="block_5">
								<a href="" class="movie_link movie_link5">
									<div class="videobox_list">
										<video id="video5" class="list_video" muted>
											<source id="movie_src5" type="video/mp4" src=""/>
										</video>
										<div class="analysis_list-textbox">
											<div class="analysis_list-title">시험용 타이틀 5 길이조정길이조정길이조정길이조정길이조정길이조정길이조정길이조정</div>
											<div class="analysis_list-writer">작성자5 길이조정길이조정길이조정길이조정길이조정길이조정길이조정</div>
											<div class="analysis_list-swingtype">아이언</div>
											<div class="analysis_list-timecost">소요시간: 1h 30m 20s</div>
											<div class="analysis_list-accuracy">Acc:100%</div>
											<div class="analysis_list-date">2021.05.10 14:00</div>
										</div>
									</div>
								</a>
                            </div>
                            <div class="movie_column third_column videono06" id="block_6">
								<a href="" class="movie_link movie_link6">
									<div class="videobox_list">
										<video id="video6" class="list_video" muted>
											<source id="movie_src6" type="video/mp4" src=""/>
										</video>
										<div class="analysis_list-textbox">
											<div class="analysis_list-title">시험용 타이틀 6 길이조정길이조정길이조정길이조정길이조정길이조정길이조정길이조정</div>
											<div class="analysis_list-writer">작성자6 길이조정길이조정길이조정길이조정길이조정길이조정길이조정</div>
											<div class="analysis_list-swingtype">아이언</div>
											<div class="analysis_list-timecost">소요시간: 1h 30m 20s</div>
											<div class="analysis_list-accuracy">Acc:100%</div>
											<div class="analysis_list-date">2021.05.10 14:00</div>
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
                                <a class="page_link" id="page-link-num7" onclick="move_page_num(document.getElementById('page-link-num7').innerHTML,document.getElementById('present_pgnum').innerHTML)">7</a>
                            </li>
                            <li class="page_item">
                                <a class="page_link" id="page-link-num8" onclick="move_page_num(document.getElementById('page-link-num8').innerHTML,document.getElementById('present_pgnum').innerHTML)">8</a>
                            </li>
                            <li class="page_item">
                                <a class="page_link" id="page-link-num9" onclick="move_page_num(document.getElementById('page-link-num9').innerHTML,document.getElementById('present_pgnum').innerHTML)">9</a>
                            </li>
                            <li class="page_item">
                                <a class="page_link" id="page-link-num10" onclick="move_page_num(document.getElementById('page-link-num10').innerHTML,document.getElementById('present_pgnum').innerHTML)">10</a>
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
	    }else{
	    	// 로그아웃 상태박스에 active클래스 부여/ 로그인 상태 박스에서는 삭제
	        $("#logout_state").addClass("active");
	        $("#login_state").removeClass("active");
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
	// 페이지에 따라 자동으로 영상이 보여지는 함수
	$(function() {
	    var directory = 'http://localhost:13131/golf/resources/static/movie/';
	    var video1 = document.getElementById('block_1').className;
	    var video2 = document.getElementById('block_2').className;
	    var video3 = document.getElementById('block_3').className;
	    var video4 = document.getElementById('block_4').className;
	    var video5 = document.getElementById('block_5').className;
	    var video6 = document.getElementById('block_6').className;
	    
	 	// 초기 페이지 번호
	    var pgnum=1;
	
	   	// 영상번호 출력
	    var text1 = video1.replace('movie_column first_column videono','');
	    var text2 = video2.replace('movie_column second_column videono','');
	    var text3 = video3.replace('movie_column third_column videono','');
	    var text4 = video4.replace('movie_column first_column videono','');
	    var text5 = video5.replace('movie_column second_column videono','');
	    var text6 = video6.replace('movie_column third_column videono','');

	    // 인덱스 부여(후에 list.get(i)에 사용, ex: 1번은 1-1에 ~ 6번은 2-3에 가고 페이지 넘어가면 7~12번이 똑같이 반복)
	    var index1 = text1-1;
	    var index2 = text2-1;
	    var index3 = text3-1;
	    var index4 = text4-1;
	    var index5 = text5-1;
	    var index6 = text6-1;
	    
	    var file1 = "${list.get(index1).upload_file}";
	    var file2 = "${list.get(index2).upload_file}";
	    var file3 = "${list.get(index3).upload_file}";
	    var file4 = "${list.get(index4).upload_file}";
	    var file5 = "${list.get(index5).upload_file}";
	    var file6 = "${list.get(index6).upload_file}";
	    
	    //var filetype = ".mp4";
	    var dir1 = directory + file1;
	    var dir2 = directory + file2;
	    var dir3 = directory + file3;
	    var dir4 = directory + file4;
	    var dir5 = directory + file5;
	    var dir6 = directory + file6;
	    
	    $("#movie_src1").attr("src", dir1);
	    $("#movie_src2").attr("src", dir2);
	    $("#movie_src3").attr("src", dir3);
	    $("#movie_src4").attr("src", dir4);
	    $("#movie_src5").attr("src", dir5);
	    $("#movie_src6").attr("src", dir6);

	    //동영상을 다시 load 함
	    $("#video1").load();
	    $("#video2").load();
	    $("#video3").load();
	    $("#video4").load();
	    $("#video5").load();
	    $("#video6").load();
	});
	</script>
</body>
</html>