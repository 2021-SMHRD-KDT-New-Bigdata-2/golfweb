<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.golfproject.domain.tbl_member"%> 
<%@ page import="kr.golfproject.domain.tbl_upload"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>    
<!doctype html>
<html class="no-js" lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title> Title </title>
	<meta name="description" content="">
	
	<!-- 구글폰트 -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/app.css?ver=1">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/vendor.css?ver=1">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/app.scss">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/sidebar.css?ver=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="https://fonts.googleapis.com/css2?family=Fredoka+One&display=swap" rel="stylesheet">
	<!-- Theme initialization -->
	<script async="" src="https://www.google-analytics.com/analytics.js"></script>
	<style>
input[type="checkbox"] {
	width: 30px; /*Desired width*/
	height: 30px; /*Desired height*/
	cursor: pointer;
}

.btn-3 {
  background-image: linear-gradient(to right, #84fab0 0%, #8fd3f4 51%, #84fab0 100%);
}


.container {
  display: flex;
  justify-content: center;
  align-items: center;
  align-content: center;
  flex-wrap: wrap;
  width: 80vw;
  margin: 0 auto;
  min-height: 100vh;
}
.btn2 {
  flex: 1 1 auto;
  margin: 10px;
  padding: 15px;
  text-align: center;
  text-transform: uppercase;
  transition: 0.5s;
  background-size: 200% auto;
  color: white;
  width:440px;
 /* text-shadow: 0px 0px 10px rgba(0,0,0,0.2);*/
  border-radius: 10px;
 }

/* Demo Stuff End -> */

/* <- Magic Stuff Start */

.btn:hover {
  background-position: right center; /* change the direction of the change here */
}

.cropping {
 max-height:800px;
 overflow:hidden;
}

.cropping img {
	max-height:initial;
	margin-top:-40%;
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
							<div class = "upper-link-text">최근분석으로 이동</div>
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

			<!--동영상 띄우는 박스-->
			<article class="content dashboard-page" style="left: 10px;">
				<div class="title-search-block">
					<div class="title-block">
						<div class="row">
							<div class="col-md-6">
								<h3 class="title"> 자세교정 분석결과</h3>
								<p class="title-description"> 딥러닝 분석결과와 수정이 필요한 자세를 알려드립니다. </p>
							</div>
						</div>
					</div>
				</div>
				<section class="section">
					<div class="hidden-text-box" id="hidden-text-box">
                    		<div class="hidden-text-before-login">로그인을 하신 후에 사용가능한 서비스입니다.</div>
                    </div>
					<div class="row sameheight-container video_compared" id = "sameheight-container">
						<div class="col-xl-4">
							<div class="card sameheight-item sales-breakdown" data-exclude="xs,sm,lg" style="height: 488px;width: 750px;display: inline-block;position: absolute;top: 0;left: 15px;">
								<div class="card-header">
									<div class="header-block" style="width: 60%;">						
										<div class="title" id="raw_movie_title" style="font-size:20px;margin-top: 1%;"> 제목없음 </div>
									</div>
								</div>
								<div class="card-block">
									<!-- <video src = "" controls autoplay="true" muted></video> -->
									<div class="upload_sign" id = "upload_sign">
										<div class="col-md-3 col-sm-4"></div>
									</div>

									<div class="videobox compare" id="videobox">
										<video class = "video_compare" id="a_video" muted>
											<source id="movie_src" type="video/mp4" src=""/>
										</video>
									</div>	
								</div>
							</div>

							<div class="card sameheight-item sales-breakdown" data-exclude="xs,sm,lg" style="height: 488px; width: 750px; display: inline-block; position: absolute; top: 0px; left: 780px;">
								<div class="card-header">
									<div class="header-block" style="width: 60%;">						
										<div class="title" id = "skeleton_title" style="font-size:20px;margin-top: 1%;"> 딥러닝 분석 영상 </div>
									</div>
								</div>
								<div class="card-block">
									<!-- <video src = "" controls autoplay="true" muted></video> -->
									<div class="upload_sign" id = "upload_sign">
										<div class="col-md-3 col-sm-4"></div>
									</div>

									<div class="videobox compare" id="videobox">
										<video class = "video_compare" id="a_video_skeleton" muted>
											<source id="movie_src_skeleton" type="video/mp4" src=""/>
										</video>
									</div>	
								</div>
							</div>
						</div>
						


						<!-- 분석완료시 띄울 토글과 분석결과 박스 -->
						<div class="result_box">
							<a class = "toggle" id = "toggle">
								<div class="text-result" id="text-result">
									상세정보 열기
								</div>
							</a>
							<div class="hidden-contents" id = "hidden-contents">
								<section class="section">
									<div class="row">
										<div class="col-md-6" style="max-width: 70%;max-height: 900px;">
											<div class="card fortable" style="height: 100%">
												<div class="card-block">
													<div class="card-title-block">
														<h3 class="title"> 자세교정위치표시 </h3>
													</div>
													<div class = "image_box cropping">
														<img id="resultimg" style="width:900px; height:900px; display:none">
														<!--<a class="point_link uptomiddle" id = "point_link_head">
															<div class="point_img"></div>
														</a>
														<a class="point_link uptomiddle" id = "point_link_shoulder">
															<div class="point_img"></div>
														</a>
														<a class="point_link uptomiddle2" id = "point_link_arm">
															<div class="point_img"></div>
														</a>
														<a class="point_link uptomiddle2" id = "point_link_waist">
															<div class="point_img"></div>
														</a>
														<a class="point_link downtomiddle" id = "point_link_pelvis">
															<div class="point_img"></div>
														</a>
														<a class="point_link downtomiddle" id = "point_link_knee">
															<div class="point_img"></div>
														</a>
														<a class="point_link downtomiddle2" id = "point_link_foot">
															<div class="point_img"></div>
														</a>
														<a class="point_link downtomiddle2" id = "point_link_cg">
															<div class="point_img"></div>
														</a>-->
														<div class="sizer">
															<p class = "picture_selected"></p>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="col-md-6" style="max-width: 33.7%;max-height: 900px;">
											<div class="card fortable" style="height: 100%">
												<div class="card-block">
													<div class="card-title-block">
														<h3 class="title"> 신체별 정보 </h3>
													</div>
													<div class="detail_scripts">
														<div class="detail_script_box">
															<div class="swing_recommend head">
																<button class="recommend-title btn-lg btn2 btn-3"
																	id="recommend-title-head" >머리동작</button>
																<div class="recommend-text head-text" id="head-text"></div>
															</div>
															<div class="swing_recommend shoulder">
																<button
																	class="recommend-title btn-lg btn2 btn-3"
																	id="recommend-title-shoulder" >어깨동작</button>
																<div class="recommend-text shoulder-text"
																	id="shoulder-text"></div>
															</div>
															<div class="swing_recommend arm">
																<button class="recommend-title btn-lg btn2 btn-3"
																	id="recommend-title-arm" >팔동작</button>
																<div class="recommend-text arm-text" id="arm-text"></div>
															</div>
															<div class="swing_recommend pelvis">
																<button class="recommend-title btn-lg btn2 btn-3"
																	id="recommend-title-pelvis" >골반동작</button>
																<div class="recommend-text pelvis-text" id="pelvis-text"></div>
															</div>
															<div class="swing_recommend knee">
																<button class="recommend-title btn-lg btn2 btn-3"
																	id="recommend-title-knee" >무릎동작</button>
																<div class="recommend-text knee-text" id="knee-text"></div>
															</div>
															<div class="recommend-title" id="recommend-title-cg">코멘트</div>
																<span>hi</span>
															<div class="recommend-text cg-text" id="cg-text">${weight_center}</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</section>
								<%-- <section class="section">
									<div class="row">
										<div class="col-md-6" style="max-width: 100%;">
											<div class="card fortable" style="height: 100%;">
												<div class="card-block picture_select">
													<div class="card-title-block">
														<h3 class="title"> 자세교정 시점 </h3>
													</div>
													<div class = "select_picture_box">
														<a class = "move_left" onclick = "">
															<em class="fa fa-angle-left select_picture"></em>
														</a>
														<section class="select_point">
															<div class="pictures_to_select">
																<a class = "picture_link column1" id="picture_link1" href="#" role="button">
																	<div class="picture_column column1">
																		<div class="apicture">
																			<p class = "aimage column1" id="columnimage1"></p>
																		</div>
																		<div class = "pov_text">어드레스</div>
																	</div>
																</a>
																<a class = "picture_link column2" id="picture_link2" href="#" role="button">
																	<div class="picture_column column2">
																			<div class="apicture">
																				<p class = "aimage column2" id="columnimage2"></p>
																			</div>
																			<div class = "pov_text">탑</div>
																	</div>
																</a>	
																<a class = "picture_link column3" id="picture_link3" href="#" role="button">
																	<div class="picture_column column3">
																			<div class="apicture">
																				<p class = "aimage column3" id="columnimage3"></p>
																			</div>
																			<div class = "pov_text">다운스윙</div>
																	</div>
																</a>
																<a class = "picture_link column4" id="picture_link4" href="#" role="button">	
																	<div class="picture_column column4">
																			<div class="apicture">
																				<p class = "aimage column4" id="columnimage4"></p>
																			</div>
																			<div class = "pov_text">임팩트</div>
																	</div>
																</a>
																<a class = "picture_link column5" id="picture_link5" href="#" role="button">
																	<div class="picture_column column5">
																			<div class="apicture">
																				<p class = "aimage column5" id="columnimage5"></p>
																			</div>
																			<div class = "pov_text">팔로우스루</div>
																	</div>
																</a>
																<!--<a class = "picture_link column6" id="picture_link6" href="#" role="button">
																	<div class="picture_column column6">
																			<div class="apicture">
																				<p class = "aimage column6" id="columnimage6"></p>
																			</div>
																	</div>
																</a>
																<a class = "picture_link column7" id="picture_link7" href="#" role="button">
																	<div class="picture_column column7">
																			<div class="apicture">
																				<p class = "aimage column7" id="columnimage7"></p>
																			</div>
																	</div>
																</a> -->
															</div>
														</section>
														<a class = "move_right" onclick = "">
															<em class="fa fa-angle-right select_picture"></em>
														</a>
													</div>
												</div>
											</div>
										</div>
								</section> --%>
							</div>
						</div>

					</div>
				</section>
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
	<script src="${pageContext.request.contextPath}/resources/static/javascript/deep_learning.js"></script>



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
	function logout(){
		$.ajax({
        	url : "${cpath}/tbl_member_Logout.do",
        	success : function(){
        		window.sessionStorage.setItem("login_state","N");
        		location.href = "index.html";
        	},
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
	
	<!-- 스켈레톤 영상 불러오기 -->
	<script>
		$(function() {
			if("${login_state}"=="Y"){
				$.ajax({
		        	url : "${cpath}/ImportSkeleton.do",
		        	type : "post",
		        	data : {"m_idx":${member_info.m_idx}, "upload_seq":${recent_upload_info.upload_seq}},
		        	//data : frmData,
		        	success : function(){
						var dir="http://localhost:13131/golf/resources/static/skeletonmovie/";
   						var filename = "${skeleton_file}";
   						var file = filename.replace("C:/Users/smhrd/git/golfweb/golf/src/main/webapp/resources/static/skeletonmovie/", dir);
						console.log(file)
		        		//선택한 버튼의 동영상 경로를 불러옴
		                $("#movie_src_skeleton").attr("src", file);
		        		
		                //동영상을 다시 load 함
		                $("#a_video_skeleton").load();
		                //load한 동영상을 재생
		                document.getElementById("a_video_skeleton").controls = "True";
							},
		        	error : function(){},
		    	});
			}
		});
	</script>
	
<!-- 영상불러오기 -->
	<script>
		$(function() {
			$.ajax({
	        	url : "${cpath}/ImportRecentUpload.do",
	        	type : "post",
	        	data : {"m_idx":${member_info.m_idx}},
	        	//data : frmData,
	        	success : function(){
	        		var dir="http://localhost:13131/golf/resources/static/movie/";
	        		var filename = "${recent_upload_file}";
	        		var file = dir + filename;
	        		
	        		//선택한 버튼의 동영상 경로를 불러옴
	                $("#movie_src").attr("src", file);
	        		
	                //동영상을 다시 load 함
	                $("#a_video").load();
	                //load한 동영상을 재생
	                document.getElementById("a_video").controls = "True";
	                
	                document.getElementById('raw_movie_title').innerText = "${recent_upload_subject}";
	        		},
	        	error : function(){},
	    	});
			
		});
	</script>
	
	<!-- 자세교정 텍스트 출력 -->
	<script>
	// 업로드페이지에서 섹션에 값 넣고 페이지 넘어가서 표시하는 식으로 바꾸자.굿아이디어
	
	
	//임시로 넣은 번호(차후 삭제)
	var deep_seq = 13;
	//스윙종류 : 어드레스
	var swing_type = "address";
	$('#toggle').click(function() {
		$.ajax({
        	url : "${cpath}/graphlist.do",
        	type : "post",
        	data : {"m_idx":${member_info.m_idx}, "upload_seq":${recent_upload_info.upload_seq}},
					datatype: "json",
        	//data : frmData,
        	success : function(data){
        		var armgraphpath = data[0].armgraphpath
						var headgraphpath= data[0].headgraphpath
						var sdgraphpath = data[0].sdgraphpath
						var cgraphpath = data[0].cgraphpath
						var kgraphpath = data[0].kgraphpath
						$('#recommend-title-head').click(function(){angjingfn(headgraphpath)})
							
							
						$('#recommend-title-shoulder').click(function(){angjingfn(sdgraphpath)})
							
						$('#recommend-title-arm').click(function(){angjingfn(armgraphpath)})
							
						$('#recommend-title-pelvis').click(function(){angjingfn(cgraphpath)})
							
						$('#recommend-title-knee').click(function(){angjingfn(kgraphpath)})
							
						
						//console.log(armgraphpath)
        	},
        	error : function(){},
    	});
		
		
	});
	</script>
	<script>
		function angjingfn(data) {
			var dir='http://localhost:13131/golf/resources/static/graph/'
				var filename = data;
				console.log(data)
	   			var file = filename.replace("C:/Users/smhrd/git/golfweb/golf/src/main/webapp/resources/static/graph/", dir);
				$("#resultimg").attr("src", file);
				var con = $("#resultimg");
				console.log(con)
				if($("#resultimg").css('display')=='none'){
					$("#resultimg").css("display","block")
				}
		}

	</script>

	<!-- 스윙하는 특정순간의 이미지 나열 -->
	<script>
		$(function() {
			var directory_address = 'http://localhost:13131/golf/resources/static/images/result/';
			var filename_address = "${address}";
			var file_address = "url("+directory_address + filename_address+")";
			$("#columnimage1").css({
	            "background-image": file_address,
	        });
			
			var directory_top = 'http://localhost:13131/golf/resources/static/images/result/';
			var filename_top = "${top}";
			var file_top = "url("+directory_top + filename_top+")";
			$("#columnimage2").css({
	            "background-image": file_top,
	        });
			
			var directory_downswing = 'http://localhost:13131/golf/resources/static/images/result/';
			var filename_downswing = "${downswing}";
			var file_downswing = "url("+directory_downswing + filename_downswing+")";
			$("#columnimage3").css({
	            "background-image": file_downswing,
	        });
			
			var directory_impact = 'http://localhost:13131/golf/resources/static/images/result/';
			var filename_impact = "${impact}";
			var file_impact = "url("+directory_impact + filename_impact+")";
			$("#columnimage4").css({
	            "background-image": file_impact,
	        });
			
			var directory_followthrough = 'http://localhost:13131/golf/resources/static/images/result/';
			var filename_followthrough = "${followthrough}";
			var file_followthrough = "url("+directory_followthrough + filename_followthrough+")";
			$("#columnimage5").css({
	            "background-image": file_followthrough,
	        });
		});
	</script>
	

	<!-- <script>
		// 자세교정시점 선택시 액션
		$('#picture_link1').click(function() {
			if($(this).hasClass("column1")){
				var test = document.getElementById("columnimage1"); 
				var style = window.getComputedStyle(test).getPropertyValue('background-image');
				$("#picture_link1").addClass("selected");
				$(".picture_selected").css({
					"background-image": style,
				});
				
				// 자세교정 지점들 표시하기
				//$("#point_link").addClass("activated");
				
				pixel ="px";
				head_x = "${head_code_x}"+pixel;
				head_y = "${head_code_y}"+pixel;
				shoulder_x = ${head_code_x}"+pixel;
				shoulder_y = ${head_code_y}"+pixel;
				
				
				
				setTimeout(function(){
					$('#point_link_head').animate({
						left: head_x,
						top : head_y,
			        });
					$('#point_link_shoulder').animate({
						left: '200px',
						top : '100px',
			        });
					$('#point_link_arm').animate({
						left: '400px',
						top : '500px',
			        });
					$('#point_link_waist').animate({
						left: '300px',
						top : '600px',
			        });
					$('#point_link_pelvis').animate({
						left: '600px',
						top : '700px',
			        });
					$('#point_link_knee').animate({
						left: '150px',
						top : '750px',
			        });
					$('#point_link_foot').animate({
						left: '600px',
						top : '100px',
			        });
					$('#point_link_cg').animate({
						left: '750px',
						top : '350px',
			        });
					},200);
			};
		});
	</script> -->
</body>
</html>