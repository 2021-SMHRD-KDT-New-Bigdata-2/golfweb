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
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/app.css?ver=1">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/vendor.css?ver=1">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/app.scss">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<!-- Theme initialization -->
	<script async="" src="https://www.google-analytics.com/analytics.js"></script>
    <style type="text/css">
        .no-drag {-ms-user-select: none; -moz-user-select: -moz-none; -webkit-user-select: none; -khtml-user-select: none; user-select:none;}
    </style>
</head>

<body class = "loaded">
    <div class="auth">
        <div class="auth-container">
            <div class="card login">
                <!-- 헤더 -->
                <header class="auth-header">
                    <h1 class="auth-title">
                        <div class="logo">
                            <p class = "logo_image_login"></p>
                        </div>
                        GolfBorn 
                    </h1>
                </header>
                <div class="auth-content">
                    <p class="text-center login_text" id = "logintext">로그인</p>
                    <form id="login-form" action="/index.html" method="post" novalidate="novalidate" onkeyup=pushenter()>
                        <!-- ID 입력 박스 -->
                        <div class = "ID_box active" id = "ID_box">
                            <div class="form-group" id = "form-group">
                                <!-- 아이디 입력 -->
                                <input type="email" class="form-control underlined" name="username" id="username" placeholder="아이디 또는 이메일" style="font-style: normal;" required="" aria-required="true"> 
                                <div class="hidden-text" id="hidden-text">아이디 또는 이메일</div>
                                <a href="reset.html" class="forgot-btn pull-left" tabindex="-1">이메일을 잊으셨나요?</a>
                            </div>
    
                            <!-- 인스턴스계정으로 로그인 -->
                            <div class="guest_mode" style="float: left;">
                               	아이디가 없으세요? 아이디를 만들거나
                                <a href = "index.html" class="login_by_guestid" tabindex="-1">
                                  	  게스트 계정으로 로그인하세요.
                                </a>
                            </div>
    
                            <!-- 하단 버튼 -->
                            <div class="form-group">
                                <button id = "submit_id" type="submit" class="btn btn-block btn-primary" style="font-size: 18px; width: 100px; height:45px; float: right;" onclick="login_goto_pwd()">다음</button>
                                <p class="text-muted text-center">
                                    <a href="join.html" class="create_id" tabindex="-1">계정만들기</a>
                                </p>
                            </div>
                        </div>
                        
                        <!-- 비밀번호 입력박스 -->
                        <div class="pwd_box" id = "pwd_box">
                            <div class="form-group pwd" style="display: inline-block;">
                                <!-- 비밀번호 입력 -->
                                <input type="password" class="form-control underlined" name="password" id="password" placeholder="비밀번호 입력" style="font-style: normal;" required="" aria-required="true" tabindex="-1"> 
                                <div class="hidden-text-pwd" id="hidden-text-pwd">비밀번호 입력</div>

                                <!-- 비밀번호 표시 체크박스 -->
                                <div class="display_pwd" id="display_pwd">
                                    <div style="margin-top: 30px; height: 65px;position: absolute;top: 80%;">
                                        <label>
                                            <input class="checkbox" id = "checkbox" type="checkbox" onclick="checkbox_on()">
                                            <span style="font-weight: 400;font-size: 17px;" tabindex="-1">비밀번호 표시</span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <!-- 하단메뉴 -->
                            <div class="form-group pwd2">
                                <button id="submit_pwd" type="button" class="btn btn-block btn-primary" style="font-size: 18px; width: 100px; height:45px; float: right;" onclick="login_btn()" tabindex="-1">다음</button>
                                <p class="text-muted text-center">
                                    <a href="searchpwd.html" class="search_pwd" tabindex="-1">비밀번호 찾기</a>
                                </p>
                            </div>
                        </div>

                    </form>


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
	
	<script type="text/javascript">
	// 아이디 입력 후 다음버튼 누르면 발생하는 함수
	function login_goto_pwd(){
		var id = $("#username").val();
		$.ajax({
			url : "${cpath}/tbl_member_submit_ID.do",
        	type : "post",
        	data : {"m_id":id},
        	//data : frmData,
        	success : function(){
        				$('#ID_box').animate({
        		            left : '-120%',
        		        })
        		        $('#pwd_box').animate({
        		            left : '10%',
        		        })
        		
        		        $("#logintext").text(id);
        		        
        		        $('#submit_id').attr("type", "button");
        		        $('#submit_pwd').attr("type", "submit");
        		        
        		        // 탭순서 변경
        		        document.getElementById('username').tabIndex = "-1";
        		        document.getElementById('submit_id').tabIndex = "-1";
        		        document.getElementById('password').tabIndex = "1";
        		        document.getElementById('submit_pwd').tabIndex = "2";
        		     	
        		        // 보여주는 박스에 active클래스 부여/ 숨기는 박스에서는 삭제
        		        $("#pwd_box").addClass("active");
        		        $("#ID_box").removeClass("active");
        		        
        		        // 시간지연해서 0.4초후 비밀번호 input 창에 포커스 주기
        		        setTimeout(function(){document.getElementById("password").focus();},400);
        				},
        				
			error : function(){ alert("error");
								$('#hidden-text').css({
									 "color" : "#FF4444",
								});
							}

			});	
		};
		
	</script>
	
	<script type="text/javascript">
	// 로그인 버튼을 누르면 발생하는 함수
	function login_btn(){
		var id = $("#username").val();
	    var pwd = $("#password").val();
	    
	    $.ajax({
        	url : "${cpath}/tbl_member_Login.do",
        	type : "post",
        	data : {"m_id":id, "m_pwd":pwd},
        	//data : frmData,
        	success : function(){
       						alert('로그인에 성공했습니다!'); 
       						location.href = "index.html";
        	},
        	error : function(){
        		if (!(id && pwd)){
        			//alert("비밀번호를 입력해주세요.")
        	        $('#hidden-text-pwd').css({
        	            "color" : "#FF4444",
        	        });
        	        $('#password').css({
        	            "border" : "1px solid #FF4444",
        	        });
        	    }else{
        	    	alert("틀린 비밀번호입니다.")
        	    };
        	}  
    	});
	};
	</script>
	
    <script src="${pageContext.request.contextPath}/resources/static/javascript/vendor.js"></script>
	<script src="${pageContext.request.contextPath}/resources/static/javascript/app.js"></script>
	<script src="${pageContext.request.contextPath}/resources/static/javascript/upload.js"></script>
	<script src="${pageContext.request.contextPath}/resources/static/javascript/member.js"></script>
</body>
</html>