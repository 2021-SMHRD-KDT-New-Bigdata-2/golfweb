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
	
	<link rel="stylesheet" href="${cpath}/resources/static/css/app.css">
	<link rel="stylesheet" href="${cpath}/resources/static/css/vendor.css">
	<link rel="stylesheet" href="${cpath}/resources/static/css/app.scss">
	<link rel="stylesheet" href="${cpath}/resources/static/css/sidebar.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<!-- Theme initialization -->
	<script async="" src="https://www.google-analytics.com/analytics.js"></script>
	<style>
		input[type="checkbox"]{

		width: 30px; /*Desired width*/

		height: 30px; /*Desired height*/

		cursor: pointer;
		}
	</style>
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
								<span class="name" id="profile-name"> Name </span>
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
									<li class = "active">
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

			<!--동영상 띄우는 박스-->
			<article class="content dashboard-page">
				<div class="title-search-block">
					<div class="title-block">
						<div class="row">
							<div class="col-md-6">
								<h3 class="title"> 골프 영상 업로드</h3>
								<p class="title-description"> 코멘트. </p>
							</div>
						</div>
					</div>
				</div>
				<section class="section">
					<div class="row sameheight-container">
						<div class="col-xl-4">
							<div class="card sameheight-item sales-breakdown" data-exclude="xs,sm,lg">
								<div class="card-header">
									<div class="header-block" style="width: 60%;">						
										<div class="title" style="font-size:20px;margin-top: 1%;"> 제목입력: </div>
										<input class= "input_title" type="text" name="textfield" style="width:500px;height:30px;position: absolute;top: 2%;margin-left: 10px;" placeholder="날짜/아이언/드라이버 디폴트">
									</div>
									<table class="swing_type">
										<div class="title" style="font-size:20px;margin-top: 0.5%;margin-left: 12%;"> 스윙타입: </div>
										<tr>
											<td class = "swing iron-swing" id="swing_type-iron" style="font-size: 15px;">
												<input type="radio" class="club_type" value="I" name="club_type">아이언
											</td>
											<td class = "swing driver-swing" id="swing_type-driver" style="font-size: 15px;">
												<input type="radio" class="club_type" value="D" name="club_type"> 드라이버 
											</td>
										</tr>
									</table>
								</div>
								<div class="card-block">
									<!-- <video src = "" controls autoplay="true" muted></video> -->
									<div class="upload_sign" id = "upload_sign">
										<div class="col-md-3 col-sm-4">
											<em class="fa fa-upload"></em> <small>동영상을 드래그해주세요.</small>
										</div>
									</div>

									<div class="videobox" id="videobox">
										<video id="a_video" muted>
											<source id="movie_src" type="video/mp4" src=""/>
										</video>
									</div>
									
									<form name="form_movie" class = "filebox preview-image col-sm-9" enctype="multipart/form-data" style="display: inline-block;">
										<input id = "upload-name" class="upload-name" value="" disabled="disabled" style="width:500px; height:40px;">
										<label class="btn btn-primary btn-sm" for="input_file" style="font-size: 18px;margin-left: 10px;border-color: #44bd32;background-color: #44bd32;height: 40px;padding: 0.5rem 0.5rem 0px 0.5rem;">업로드</label>
										<input type='file' name="input_file" id="input_file" class="upload-hidden" accept=".mp4, .avi"/>
									</form>
									
										<input type="button" class="btn btn-warning" style="font-size: 19px; float: right; position: relative;right: 1%;top: 2%;" value="전송" id="uploadClick" onclick="upload(${member_info.m_idx})">
										<a href="video_compared.html">
										<input type="button" class="btn btn-info" style="font-size: 19px; float: right; position: relative;right: 1%;top: 2%;" value="분석하기" >
										</a>
								</div>
							</div>
						</div>
					</div>
				</section>
			</article>
		</div>
	</div>
	<script>
		
	</script>

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
	<script>
	function upload(index){
		var formData = new FormData();
		var m_idx = index;   
		var inputFile =$("input[name='input_file']");
		var files=inputFile[0].files;
		console.log(files);
		for(var i =0;i<files.length;i++){
			formData.set("uploadfile",files[i]);
			console.log(formData);
		}
		$.ajax({
			url: '${cpath}/uploadAjaxAction',
			processData:false,
			contentType: false,
			data: formData,
			type: 'POST',
			success: function(result){
				alert("uploaded");
				var upload_file = filename;
				
				console.log(upload_file);
				var upload_title = $("#upload_title").val();
				console.log(upload_title);
				
				console.log(index)
				var club_type = $(".club_type").val();
				console.log(club_type);
				$.ajax({
					url:"${cpath}/uploadata",
					data: {"upload_file":upload_file,"upload_sybject":upload_title,"club_type":club_type,"m_idx":m_idx},
					success: function(){
						alert("드디어 성공!")
					}
					error :function({alert("두번쨰실패")})

				})
			},
			error: function(){alert("실패 시발!");}
		});

	}
	

	</script>
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
		// 로그인 후 페이지에 생길 변화
		$(function() {
			var name = "Name";
			if ($("#login_state").hasClass("active")){
				<%tbl_member vo=(tbl_member)session.getAttribute("member_info");%>
				name = "<%=vo.getM_name()%>";
			}
			document.getElementById('profile-name').innerHTML = name;
		});
	</script>
	
	<script>
	// 로그아웃
	function logout(){
	    // 세션 삭제
	    <%//session.invalidate();%>
		<%//session.setAttribute("login_state",null);%>
		
		// 로그아웃 상태박스에 active클래스 부여/ 로그인 상태 박스에서는 삭제
      	$("#logout_state").addClass("active");
    	$("#login_state").removeClass("active");
	};
	</script>
	
</body>
</html>