<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<!-- CSS import해오는 부분 -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/app.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/vendor.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/app.scss">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<!-- Theme initialization -->
	<script async="" src="https://www.google-analytics.com/analytics.js"></script>
</head>

<body class = "loaded">
	<div class="auth">
		<div class="auth-container join">
            <div class="card join" style="border-right: #fff;">
				<!-- 헤더 -->
				<header class="auth-header join">
                    <h1 class="auth-title join">
                        <div class="logo join">
                            <p class = "logo_image_join"></p>
                        </div>
                        GolfBorn </h1>
                </header>
				<div class="auth-content join">
					<p class="join_text" id = "join_text">계정 만들기</p>
					<form id="join_form" action="./index.html" method="post" novalidate="novalidate" onkeyup=pushenter()>
						<!-- 필수기재사항 박스 -->
						<div class="essential_box active" id = "essential_box">
							<!-- 이름 입력 박스 -->
							<div class="name_group fail" id="name_group">
								<!-- 성 -->
								<div class ="lastnamebox box">
									<input class="join_control name" id = "lastname" name="lastname" placeholder="성" style="font-style: normal;" required="" aria-required="true">
									<div class="hidden-text lastname" id = "hidden-lastname">성</div>
								</div>
								<!-- 이름 -->
								<div class="firstnamebox box">
									<input class="join_control name" id = "firstname" name="firstname" placeholder="이름" style="font-style: normal;margin-left: 3%;" required="" aria-required="true">
									<div class="hidden-text firstname" id = "hidden-firstname">이름</div>
								</div>
								<!-- 에러메시지(hidden) -->
								<div class="error_msg_name" id="error_msg_name">이름을 입력해야 합니다!</div>
							</div>

							<!-- 아이디 입력 박스 -->
							<div class="id_group fail" id = "id_group">
								<!-- 사이트 전용 아이디를 입력하는 칸 -->
								<div class = "user_id_group active" id = "user_id_group">
									<input class="join_control id" name="user_id" id="user_id" placeholder="사용자 아이디" style="font-style: normal;" required="" aria-required="true">
									<div class="hidden-text user_id" id = "hidden-user_id">사용자 아이디</div>
								</div>
								<!-- 이메일을 입력하는 칸 -->
								<div class = "email_group" id = "email_group">
									<input class="join_control email" name="user_email" id="user_email" placeholder="이메일 주소" style="font-style: normal;" required="" aria-required="true">
									<div class="hidden-text user_email" id = "hidden-user_email">이메일 주소</div>
									<select class="email_type" id = "email_type">
										<option value="google" selected>@gmail.com</option>
										<option value="naver">@naver.com</option>
										<option value="daum">@daum.net</option>
									</select>
								</div>
								<!-- 에러메시지(hidden) -->
								<div class="error_msg_id" id="error_msg_id">아이디 또는 이메일을 입력해야 합니다!</div>

								<!-- 설명 텍스트 -->
								<div class="email_info" id = "email_info">문자, 숫자, 특수기호를 사용할 수 있습니다.</div>

								<!-- 입력하려고 하는 아이디의 형식을 바꾸는 태그 -->
								<a class="change_id_type" id = "change_id_type" onclick = "change_id_type()" tabindex="-1">
									이메일로 아이디 만들기
								</a>
							</div>

							<!-- 비밀번호 입력 박스 -->
							<div class="password_group fail" id = "password_group">
								<!-- 비밀번호 -->
								<div class="passwordbox box">
									<input type="password" class="join_control password" name="user_pwd" id = "user_pwd" placeholder="비밀번호" style="font-style: normal;" required="" aria-required="true">
									<div class="hidden-text user_password" id="hidden-user_pwd">비밀번호</div>
								</div>
								<!-- 확인 -->
								<div class="confirmbox box">
									<input type="password" class="join_control password" name="pwd_confirm" id = "pwd_confirm" placeholder="확인" style="font-style: normal;margin-left: 3%;" required="" aria-required="true">
									<div class="hidden-text password_confirm" id="hidden-pwd_confirm">확인</div>
								</div>
								<!-- 에러메시지(hidden) -->
								<div class="error_msg_password" id = "error_msg_password">비밀번호가 일치하지 않습니다!</div>

								<!-- 비밀번호 표시 체크박스 -->
								<div class="display_pwd" id="display_pwd">
                                    <div style="margin-top: 0px;height: 35px;position: relative;top: 0%;">
                                        <label>
                                            <input class="checkbox" id = "checkbox" type="checkbox" onclick="checkbox_on_join()">
                                            <span style="font-weight: 400;font-size: 16px;color: #7e8e9f;">비밀번호 표시</span>
                                        </label>
                                    </div>
                                </div>
							</div>

							<!-- 하단 버튼 모음 -->
							<div class="form-group join_essential" id="join_essential">
								<!-- 로그인페이지로 돌아가기 -->
								<a href = "login.html" class="return_login" style="margin-left: 0;" tabindex="-1">로그인페이지로 돌아가기</a>
								<!-- 다음버튼 -->
								<button id="submit_join1" type="button" class="btn btn-block btn-primary" style="font-size: 18px; width: 100px; height:45px; float: right;" onclick="go_join_detail()">다음</button>
							</div>
						</div>

						<!-- 상세정보(선택사항) 입력칸이 모인 박스 -->
						<div class="detailed_box" id = "detailed_box">
							<!-- 전화번호 입력 박스 -->
							<div class="phone_group">
								<div class ="phonbox box">
									<input class="join_control phone" id = "phone" name="phone" type='number' oninput='handleOnInput(this, 11)' placeholder="전화번호('-'없이 숫자만 입력)" style="font-style: normal;" required="" aria-required="true" tabindex="-1">
									<div class="hidden-text phone" id="hidden-phone">전화번호</div>
								</div>
							</div>

							<!-- 성별 선택 박스 -->
							<div class="gender_group">
								<select class="gender_type" id = "gender" tabindex="-1">
									<option id = "gender_text">성별</option>
									<option value = "남">남</option>
									<option value = "여">여</option>
								</select>
								<div class="hidden-text user_gender" id ="hidden-gender">성별</div>
							</div>

							<!-- 생년월일 입력 박스 -->
							<div class="birthdate_group">
								<div class="birth_text">생년월일</div>
								<div class="yearbox box">
									<input class="join_control year" id = "year" name="year" type='number' min="1" oninput='handleOnInput(this, 4)' placeholder="연도" style="font-style: normal;" required="" aria-required="true" tabindex="-1">
									<div class="hidden-text year" id ="hidden-year">연도</div>
								</div>
								<div class="monthbox box">
									<select class="select_month" name="month" id = "month" tabindex="-1">
										<option id = "month_text">월</option>
										<option value = "1">1</option>
										<option value = "2">2</option>
										<option value = "3">3</option>
										<option value = "4">4</option>
										<option value = "5">5</option>
										<option value = "6">6</option>
										<option value = "7">7</option>
										<option value = "8">8</option>
										<option value = "9">9</option>
										<option value = "10">10</option>
										<option value = "11">11</option>
										<option value = "12">12</option>
									</select>
									<div class="hidden-text month" id ="hidden-month">월</div>
								</div>
								<div class="datebox box">
									<input class="join_control date" id="date" name="date" type='number' max="31" min="1" oninput='handleOnInput(this, 2)' placeholder="일" style="font-style: normal;" required="" aria-required="true" tabindex="-1">
									<div class="hidden-text date" id ="hidden-date">일</div>
								</div>
							</div>

							<!-- 골프관련 정보 입력 -->
							<div class="iron_distance_group">
								<div class="golf_text">골프관련</div>
								<div class ="iron_distance box">
									<input class="join_control iron_distance" id="iron_distance" name="iron_distance" type='number' placeholder="아이언 비거리(선택사항)" style="font-style: normal;" required="" aria-required="true" tabindex="-1">
									<div class="hidden-text iron_distance" id="hidden-iron_distance">아이언 비거리</div>
								</div>
							</div>
							<div class="driver_distance_group">
								<div class ="driver_distance box">
									<input class="join_control driver_distance" id="driver_distance" name="driver_distance" type='number' placeholder="드라이버 비거리(선택사항)" style="font-style: normal;" required="" aria-required="true" tabindex="-1">
									<div class="hidden-text driver_distance" id="hidden-driver_distance">드라이버 비거리</div>
								</div>
							</div>
							<div class="score_group">
								<div class ="score box">
									<input class="join_control score" id="score" name="score" placeholder="골프 스코어(선택사항)" type='number' style="font-style: normal;" required="" aria-required="true" tabindex="-1">
									<div class="hidden-text score" id="hidden-score">골프 스코어</div>
								</div>
							</div>

							<!-- 하단 버튼 -->
							<div class="form-group join_detailed">
								<!-- 로그인 페이지로 돌아가기 -->
								<a href = "login.html" class="return_login" style="margin-left: 0;" tabindex="-1">로그인페이지로 돌아가기</a>
								<!-- 회원가입버튼 -->
								<button id="submit_join2" type="button" class="btn btn-block btn-primary" style="font-size: 18px; width: 100px; height:45px; float: right;" onclick="submit_join()" tabindex="-1">다음</button>
							</div>
						</div>
					</form>
				</div>
			</div>

			<!-- 우측의 이미지와 안내글 -->
            <div class="card join image" style="border-left:#fff;">
				<div class="image join essential">
					<p class = "image_essential" id="image_essential"></p>
					<div class="image_essential_text" id ="image_essential_text">회원가입에 필요한 필수기재사항입니다.</div>
				</div>
			</div>
			
			<!-- 홈으로 돌아가는 버튼 -->
            <div class="text-center go-to-home">
                <a href="index.html" class="btn btn-secondary btn-sm go-to-home">
                    <i class="fa fa-arrow-left"></i> 홈으로 돌아가기
                 </a>
            </div>
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
	
	<!-- 로그인  -->
	<script type="text/javascript">
	// 로그인 버튼을 누르면 발생하는 함수
	function login_btn(){
		var id = $("#username").val();
	    var pwd = $("#password").val();
	    if (!(id && pwd)){
	        $('#hidden-text-pwd').css({
	            "color" : "#FF4444",
	        })
	        $('#password').css({
	            "border" : "1px solid #FF4444",
	        })
	    }
	    
	    // 로그인 실행함수넣어라
	    $.ajax({
        	url : "${cpath}/tbl_member_Login.do",
        	type : "post",
        	data : {"m_id":id, "m_pwd":pwd},
        	//data : frmData,
        	success : function(){alert('로그인에 성공했습니다!'); location.href = "index.html";},
        	error : function(){alert("error"); }  
    	});
	    
	    
	}
	</script>
	
	<!-- 회원가입 -->
	<script type="text/javascript">
	// 회원가입 버튼 클릭시 발생하는 작업
	function submit_join(){ 
		var lastname = $("#lastname").val();
		var firstname = $("#firstname").val();
		var name = lastname + " " + firstname;
		var id = "";
		if ($("#user_id_group").hasClass("active")){
			id = $("#user_id").val();
		}
		if ($("#email_group").hasClass("active")){
			if($("#email_type").val()=="google"){
				id = $("#user_email").val()+"@gmail.com";
			};
			if($("#email_type").val()=="naver"){
				id = $("#user_email").val()+"@naver.com";
			};
			if($("#email_type").val()=="daum"){
				id = $("#user_email").val()+"@daum.net";
			};
		};
		var pwd = $("#user_pwd").val();
		
		var phone = null;
		if(!$("#phone").val()){
			phone = 000-0000-0000;
		}else{
			phone = $("#phone").val();
		};
		
		
		if($("#gender").val()=="성별"){
			var gender = "남";
		}else{
			var gender = $("#gender").val();
		};
		var year = null;
		var month = null;
		var date = null;
		if (!$("#year").val()){
			year = "2000";
		}else{
			year = $("#year").val();
		};
		if ($("#month").val()=="월"){
			month = "1";
		}else{
			month = $("#month").val();
		};
		if (!$("#date").val()){
			date = "1";
		}else{
			date = $("#date").val();
		};;
		
		var birthdate = year + "-" + month + "-" + date;
		var iron_distance = null;
		var driver_distance = null;
		var score = null;
		if (!$("#iron_distance").val()){
			iron_distance = 0;
		}else{
			iron_distance = $("#iron_distance").val();
		}
		if (!$("#driver_distance").val()){
			driver_distance = 0;
		}else{
			driver_distance = $("#driver_distance").val();
		}
		if (!$("#score").val()){
			score = 0;
		}else{
			score = $("#score").val();
		}
		
		var admin_yn = "N";
		if (id=="admin" && pwd=="1234" && name=="admin admin"){
			alert("관리자입니다");
			admin_yn = "Y";
		};
		
		$.ajax({
	        	//url : "${cpath}/tbl_member_Join.do",
	        	url : "${pageContext.request.contextPath}/tbl_member_Join.do",
	        	type : "post",
	        	data : {"m_pwd":pwd, "m_name":name, "m_phone":phone, "m_id":id, "m_gender":gender, "m_birthdate":birthdate, "iron_distance":iron_distance, "driver_distance":driver_distance, "m_score":score, "admin_yn":admin_yn},
	        	//data : frmData,
	        	success : function(){alert('가입에 성공했습니다!.'); location.href = "index.html";},
	        	error : function(){alert("error"); }  
	    });
	};
	</script>
	<script src="${pageContext.request.contextPath}/resources/static/javascript/vendor.js"></script>
	<script src="${pageContext.request.contextPath}/resources/static/javascript/app.js"></script>
	<script src="${pageContext.request.contextPath}/resources/static/javascript/upload.js"></script>
	<script src="${pageContext.request.contextPath}/resources/static/javascript/member.js"></script>
</body>
</html>