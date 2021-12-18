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
	<link rel="stylesheet" href="${cpath}/resources/static/css/golfinfo.css">
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
							<div class = "upper-link-text">마지막 분석으로</div>
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
								<ul class="sidebar-nav collapse" style="height: 0px;">
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
										<a href="golf_info_image.html"> 골프 정보 </a>
									</li>
									<li>
										<a href="info1.html"> 선수 영상 </a>
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

			<article class="content golf-info-page">
				<div class="title-search-block">
	                <div class="title-block">
                            <div class="row">
                                <div class="col-md-6">
                                    <h3 class="title"> 골프정보</h3>
                                    <p class="title-description"> 골프정보입니다. </p>
                                </div>
                            </div>
                        </div>
				</div>
				
				<!-- 리스트 박스 -->
                <div class="info-container">
                	<!-- 정보1 -->
                	<div class = "info-box info1">
                		<div class = "image-box">
                			<p class = "image1">
                		</div>
                		<div class = "comment-box">
                			<div class="sub-title">소제목</div>
                			<p class = "comment-text">코멘트</p>
                			<div class="middle-text">텍스트 위치조정 : 좌우는 margin-left로, 위아래는 margin-top으로</div>
                		</div>
                	</div>
                	
                	<!-- 정보2 -->
                	<div class = "info-box info2">
                		<div class = "image-box">
                			<p class = "image2">
                		</div>
                		<div class = "comment-box">
                			<div class="sub-title">소제목</div>
                			<p class = "comment-text">코멘트</p>
                			<div class="middle-text">이미지 수정은 golfinfo.css에서 .image###에서 url바꾸면 된다.</div>
                		</div>
                	</div>
                	
                	<!-- 정보3 -->
                	<div class = "info-box info3">
                		<div class = "image-box">
                			<p class = "image3">
                		</div>
                		<div class = "comment-box">
                			<div class="sub-title">소제목</div>
                			<p class = "comment-text">코멘트</p>
                		</div>
                	</div>
                	
                	<!-- 정보4 -->
                	<div class = "info-box info4">
                		<div class = "image-box">
                			<p class = "image4">
                		</div>
                		<div class = "comment-box">
                			<div class="sub-title">소제목</div>
                			<p class = "comment-text">코멘트</p>
                		</div>
                	</div>
                	
                	<!-- 정보5 -->
                	<div class = "info-box info5">
                		<div class = "image-box">
                			<p class = "image5">
                		</div>
                		<div class = "comment-box">
                			<div class="sub-title">소제목</div>
                			<p class = "comment-text">코멘트</p>
                		</div>
                	</div>
                </div>
                
                <div class = "bottom-bar">
                	<div class = "bottom-text large">
                	미네랄500 가스200으로 할 수 있는 가장 좋은 전략은?
                	</div>
                	<div class = "bottom-text small">
                	벙커링벙커링벙커링
                	</div>
                </div>
                    
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

				var upload_file = result;
				
				console.log(upload_file);
				var upload_title = $("#upload_title").val();
				console.log(upload_title);
				
				console.log(index);
				
				if($("#swing_type-driver").hasClass("selected")){
					var club_type = $("#club-type-driver").val();
				};
				
				if($("#swing_type-iron").hasClass("selected")){
					var club_type = $("#club-type-iron").val();
				};
				
				console.log(club_type);
				$.ajax({
					url:"${cpath}/uploadata",
					data: {"upload_file":upload_file,"upload_subject":upload_title,"club_type":club_type,"m_idx":m_idx},
					success: function(data){
						//alert("드디어 성공!");
						var upload_path = data
						$.ajax({
							url:"${cpath}/jsontest",
							data:{"upload_path":upload_path,"upload_file":upload_file,"upload_subject":upload_title,"club_type":club_type,"m_idx":m_idx},
							success: function(){
								//alert("성공!!!!!!!")
							},
							error:function(){
								//alert("실패")
							}
						});	
						// 분석완료 후 페이지에 일어날 변화
						progress_change();
					},
				});
			},
			error: function(){alert("영상업로드에 실패했습니다!");}
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
	        $("#sameheight-container").css({
	        	"visibility":"visible",
	        });
	        $("#hidden-text-box").css({
	        	"visibility":"hidden",
	        });
	    }else{
	    	// 로그아웃 상태박스에 active클래스 부여/ 로그인 상태 박스에서는 삭제
	        $("#logout_state").addClass("active");
	        $("#login_state").removeClass("active");
	        $("#sameheight-container").css({
	        	"visibility":"hidden",
	        });
	        $("#hidden-text-box").css({
	        	"visibility":"visible",
	        });
      	};
	});
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
	
</body>
</html>