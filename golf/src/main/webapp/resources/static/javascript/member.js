// 로그인창의 input에 마우스 클릭시 액션
// ID_box
$(function() {
    $('#username').focus(function() {
		$('#hidden-text').css({
            display : 'inline-block',
    	});
        $('#hidden-text').animate({
            top : '-114.5%',
        })
    })
    $('#username').blur(function() {
        if($('#username').val()==''){
            $('#hidden-text').css({
                display : 'none',
            });
            $('#hidden-text').animate({
                top : '-70.5%',
            })
        }

    })
});

// pwd_box
$(function() {
    $('#password').focus(function() {
		$('#hidden-text-pwd').css({
            display : 'inline-block',
    	});
        $('#hidden-text-pwd').animate({
            top : '-114.5%',
        })
    })
    $('#password').blur(function() {
        if($('#password').val()==''){
            $('#hidden-text-pwd').css({
                display : 'none',
            });
            $('#hidden-text-pwd').animate({
                top : '-70.5%',
            })
        }
        
    })
});

// 아이디 기입/미기입시 상시변화
$('#username').on("propertychange change keyup paste input",function(){
    var valid = $("#username").val();
    var len = valid.length;
    if (len==0){
        $('#hidden-text').css({
            "color" : "#FF4444",
        })
        $('#username').css({
            "border" : "1px solid #FF4444",
        })
    }else{
        $('#hidden-text').css({
            "color" : "#85CE36",
        })
        $('#username').css({
            "border" : "1px solid #85CE36",
        })
    }
})

// 비밀번호 기입/미기입시 상시변화
$('#password').on("propertychange change keyup paste input",function(){
    var valid = $("#password").val();
    var len = valid.length;
    if (len==0){
        $('#hidden-text-pwd').css({
            "color" : "#FF4444",
        })
        $('#password').css({
            "border" : "1px solid #FF4444",
        })
    }else{
        $('#hidden-text-pwd').css({
            "color" : "#85CE36",
        })
        $('#password').css({
            "border" : "1px solid #85CE36",
        })
    }
})

// 비밀번호 표시 함수
function checkbox_on(){
    // 체크 박스 체크여부 확인
    var alm = $("#checkbox").prop("checked");

    if (alm){
        // 클래스 추가하기
        $("#checkbox").addClass("active");
        $("#password").attr('type','text');
    } else {
        // 클래스 삭제하기
        $("#checkbox").removeClass("active");
        $("#password").attr('type','password');
    }
}

// 회원가입페이지에서 비밀번호 표시 함수
function checkbox_on_join(){
    // 체크 박스 체크여부 확인
    var alm = $("#checkbox").prop("checked");

    if (alm){
        // 클래스 추가하기
        $("#checkbox").addClass("active");
        $("#user_pwd").attr('type','text');
        $("#pwd_confirm").attr('type','text');
    } else {
        // 클래스 삭제하기
        $("#checkbox").removeClass("active");
        $("#user_pwd").attr('type','password');
        $("#pwd_confirm").attr('type','password');
    }
}

// id형식 변화함수
function change_id_type(){
    if ($("#user_id_group").hasClass("active")){
        $('#user_id').val("");
        $('#user_id_group').css({
            "display" : "none",
            "position": "absolute",
        })
        $('#email_group').css({
            "display" : "inline-block",
            "position": "relative",
        })
        $("#email_group").addClass("active");
        $("#user_id_group").removeClass("active");
        document.getElementById('email_info').innerText = "본인소유의 이메일이여야 합니다.";
        document.getElementById('change_id_type').innerText ="사이트전용 아이디 만들기";
        $("#id_group").removeClass("success");
        $("#id_group").removeClass("fail");
        setTimeout(function(){document.getElementById("user_email").focus();},400);
        return false;
    }

    if ($("#email_group").hasClass("active")){
        $('#user_email').val("");
        $('#email_group').css({
            "display" : "none",
            "position": "absolute",
        })
        $('#user_id_group').css({
            "display" : "inline-block",
            "position": "relative",
        })
        $("#user_id_group").addClass("active");
        $("#email_group").removeClass("active");
        document.getElementById('email_info').innerText = "문자, 숫자, 특수기호를 사용할 수 있습니다.";
        document.getElementById('change_id_type').innerText = "이메일로 아이디 만들기";
        $("#id_group").removeClass("success");
        $("#id_group").removeClass("fail")
        setTimeout(function(){document.getElementById("user_id").focus();},400);
        return false;
    }
}

// 포커스 상태일때/포커스 해제될때 발생하는 함수(회원가입페이지전용)
$(function() {
    $('#lastname').focus(function() {
        document.getElementById('lastname').placeholder ="";
        $('#lastname').css({
            border : '1px solid #85CE36',
    	});
        $('#hidden-lastname').css({
            display : 'inline-block',
    	});
        $('#hidden-lastname').animate({
            top : '-23%',
        })
	});

    $('#lastname').blur(function() {
        if($('#lastname').val()==''){
            document.getElementById('lastname').placeholder ="성";
            $('#lastname').css({
                border : '1px solid #d7dde4',
            });
            $('#hidden-lastname').css({
                display : 'none',
            });
            $('#hidden-lastname').animate({
                top : '16%',
            })
        }
	});

    $('#firstname').focus(function() {
        document.getElementById('firstname').placeholder ="";
        $('#firstname').css({
            border : '1px solid #85CE36',
    	});
        $('#hidden-firstname').css({
            display : 'inline-block',
    	});
        $('#hidden-firstname').animate({
            top : '-23%',
        })
	});

    $('#firstname').blur(function() {
        if($('#firstname').val()==''){
            document.getElementById('firstname').placeholder ="이름";
            $('#firstname').css({
                border : '1px solid #d7dde4',
            });
            $('#hidden-firstname').css({
                display : 'none',
            });
            $('#hidden-firstname').animate({
                top : '16%',
            })
        }
	});

    $('#user_id').focus(function() {
        document.getElementById('user_id').placeholder ="";
        $('#user_id').css({
            border : '1px solid #85CE36',
    	});
        $('#hidden-user_id').css({
            display : 'inline-block',
    	});
        $('#hidden-user_id').animate({
            top : '-27%',
        })
	});

    $('#user_id').blur(function() {
        if($('#user_id').val()==''){
            document.getElementById('user_id').placeholder ="사용자 아이디";
            $('#user_id').css({
                border : '1px solid #d7dde4',
            });
            $('#hidden-user_id').css({
                display : 'none',
            });
            $('#hidden-user_id').animate({
                top : '20%',
            })
        }
	});

    $('#user_email').focus(function() {
        document.getElementById('user_email').placeholder ="";
        $('#user_email').css({
            border : '1px solid #85CE36',
            'border-right-color':'#fff',
    	});
        $('#email_type').css({
            border : '1px solid #85CE36',
    	});
        $('#hidden-user_email').css({
            display : 'inline-block',
    	});
        $('#hidden-user_email').animate({
            top : '-27%',
        })
	});

    $('#user_email').blur(function() {
        if($('#user_email').val()==''){
            document.getElementById('user_email').placeholder ="이메일 주소";
            $('#user_email').css({
                border : '1px solid #d7dde4',
                'border-right-color':'#fff',
            });
            $('#email_type').css({
                border : '1px solid #d7dde4',
            });
            $('#hidden-user_email').css({
                display : 'none',
            });
            $('#hidden-user_email').animate({
                top : '20%',
            })
        }
	});

    $('#email_type').focus(function() {
        $('#user_email').css({
            border : '1px solid #85CE36',
            'border-right-color':'#fff',
    	});
        $('#email_type').css({
            border : '1px solid #85CE36',
    	});
	});

    $('#email_type').blur(function() {
        if($('#user_email').val()==''){
            $('#user_email').css({
                border : '1px solid #d7dde4',
                'border-right-color':'#fff',
            });
            $('#email_type').css({
                border : '1px solid #d7dde4',
            });
        }
	});

    $('#user_pwd').focus(function() {
        document.getElementById('user_pwd').placeholder ="";
        $('#user_pwd').css({
            border : '1px solid #85CE36',
    	});
        $('#hidden-user_pwd').css({
            display : 'inline-block',
    	});
        $('#hidden-user_pwd').animate({
            top : '-4%',
        })
	});

    $('#user_pwd').blur(function() {
        if($('#user_pwd').val()==''){
            document.getElementById('user_pwd').placeholder ="비밀번호";
            $('#user_pwd').css({
                border : '1px solid #d7dde4',
            });
            $('#hidden-user_pwd').css({
                display : 'none',
            });
            $('#hidden-user_pwd').animate({
                top : '34%',
            })
        }
	});

    $('#pwd_confirm').focus(function() {
        document.getElementById('pwd_confirm').placeholder ="";
        $('#pwd_confirm').css({
            border : '1px solid #85CE36',
    	});
        $('#hidden-pwd_confirm').css({
            display : 'inline-block',
    	});
        $('#hidden-pwd_confirm').animate({
            top : '-5%',
        })
	});

    $('#pwd_confirm').blur(function() {
        if($('#pwd_confirm').val()==''){
            document.getElementById('pwd_confirm').placeholder ="비밀번호";
            $('#pwd_confirm').css({
                border : '1px solid #d7dde4',
            });
            $('#hidden-pwd_confirm').css({
                display : 'none',
            });
            $('#hidden-pwd_confirm').animate({
                top : '34%',
            })
        }
	});

    $('#phone').focus(function() {
        document.getElementById('phone').placeholder ="";
        $('#phone').css({
            border : '1px solid #85CE36',
    	});
        $('#hidden-phone').css({
            display : 'inline-block',
    	});
        $('#hidden-phone').animate({
            top : '-30%',
        })
	});

    $('#phone').blur(function() {
        if($('#phone').val()==''){
            document.getElementById('phone').placeholder ="전화번호(000-0000-0000)";
            $('#phone').css({
                border : '1px solid #d7dde4',
            });
            $('#hidden-phone').css({
                display : 'none',
            });
            $('#hidden-phone').animate({
                top : '19%',
            })
        }
	});

    $('#gender').focus(function() {
        document.getElementById('gender_text').text ="";
        $('#gender').css({
            border : '1px solid #85CE36',
    	});
        $('#hidden-gender').css({
            display : 'inline-block',
    	});
        $('#hidden-gender').animate({
            top : '22%',
        })
	});

    $('#gender').blur(function() {
        if($('#gender').val()==''){
            document.getElementById('gender_text').text ="성별";
            $('#gender').css({
                border : '1px solid #d7dde4',
            });
            $('#hidden-gender').css({
                display : 'none',
            });
            $('#hidden-gender').animate({
                top : '75%',
            })
        }
	});

    $('#year').focus(function() {
        document.getElementById('year').placeholder ="";
        $('#year').css({
            border : '1px solid #85CE36',
    	});
        $('#hidden-year').css({
            display : 'inline-block',
    	});
        $('#hidden-year').animate({
            top : '-28%',
        })
	});

    $('#year').blur(function() {
        if($('#year').val()==''){
            document.getElementById('year').placeholder ="연도";
            $('#year').css({
                border : '1px solid #d7dde4',
            });
            $('#hidden-year').css({
                display : 'none',
            });
            $('#hidden-year').animate({
                top : '22%',
            })
        }
	});

    $('#month').focus(function() {
        document.getElementById('month_text').text ="";
        $('#month').css({
            border : '1px solid #85CE36',
    	});
        $('#hidden-month').css({
            display : 'inline-block',
    	});
        $('#hidden-month').animate({
            top : '-28%',
        })
	});

    $('#month').blur(function() {
        if($('#month').val()==''){
            document.getElementById('month_text').text ="월";
            $('#month').css({
                border : '1px solid #d7dde4',
            });
            $('#hidden-month').css({
                display : 'none',
            });
            $('#hidden-month').animate({
                top : '22%',
            })
        }
	});

    $('#date').focus(function() {
        document.getElementById('date').placeholder ="";
        $('#date').css({
            border : '1px solid #85CE36',
    	});
        $('#hidden-date').css({
            display : 'inline-block',
    	});
        $('#hidden-date').animate({
            top : '-28%',
        })
	});

    $('#date').blur(function() {
        if($('#date').val()==''){
            document.getElementById('date').placeholder ="일";
            $('#date').css({
                border : '1px solid #d7dde4',
            });
            $('#hidden-date').css({
                display : 'none',
            });
            $('#hidden-date').animate({
                top : '22%',
            })
        }

        if($('#date').val()>31){
            document.getElementById('date').value ="31";
        }
        if($('#date').val()<1){
            document.getElementById('date').value ="1";
        }
	});

    $('#iron_distance').focus(function() {
        document.getElementById('iron_distance').placeholder ="";
        $('#iron_distance').css({
            border : '1px solid #85CE36',
    	});
        $('#hidden-iron_distance').css({
            display : 'inline-block',
    	});
        $('#hidden-iron_distance').animate({
            top : '-28%',
        })
	});

    $('#iron_distance').blur(function() {
        if($('#iron_distance').val()==''){
            document.getElementById('iron_distance').placeholder ="아이언 비거리(선택사항)";
            $('#iron_distance').css({
                border : '1px solid #d7dde4',
            });
            $('#hidden-iron_distance').css({
                display : 'none',
            });
            $('#hidden-iron_distance').animate({
                top : '18%',
            })
        }
	});

    $('#driver_distance').focus(function() {
        document.getElementById('driver_distance').placeholder ="";
        $('#driver_distance').css({
            border : '1px solid #85CE36',
    	});
        $('#hidden-driver_distance').css({
            display : 'inline-block',
    	});
        $('#hidden-driver_distance').animate({
            top : '-28%',
        })
	});

    $('#driver_distance').blur(function() {
        if($('#driver_distance').val()==''){
            document.getElementById('driver_distance').placeholder ="드라이버 비거리(선택사항)";
            $('#driver_distance').css({
                border : '1px solid #d7dde4',
            });
            $('#hidden-driver_distance').css({
                display : 'none',
            });
            $('#hidden-driver_distance').animate({
                top : '18%',
            })
        }
	});

    $('#score').focus(function() {
        document.getElementById('score').placeholder ="";
        $('#score').css({
            border : '1px solid #85CE36',
    	});
        $('#hidden-score').css({
            display : 'inline-block',
    	});
        $('#hidden-score').animate({
            top : '-28%',
        })
	});

    $('#score').blur(function() {
        if($('#score').val()==''){
            document.getElementById('score').placeholder ="골프 스코어(선택사항)";
            $('#score').css({
                border : '1px solid #d7dde4',
            });
            $('#hidden-score').css({
                display : 'none',
            });
            $('#hidden-score').animate({
                top : '18%',
            })
        }
	});
});

// 각 체크사항에 따라 올바르면 success, 틀리면 fail 클래스 붙여주는 함수
$(function() {
    // 비밀번호 일치 확인
    $('#user_pwd').change(function() {
        if($("#user_pwd").val().length>0 && $("#pwd_confirm").val().length>0){
            if($("#user_pwd").val()==$("#pwd_confirm").val()){
                $('#error_msg_password').css({
                    "display" : "inline-block",
                    "color" : "#85CE36",
                })
                document.getElementById('error_msg_password').innerText = "비밀번호 일치";
                $("#password_group").addClass("success");
                $("#password_group").removeClass("fail");
            }else{
                $('#error_msg_password').css({
                    "display" : "inline-block",
                    "color" : "#FF4444",
                })
                document.getElementById('error_msg_password').innerText = "비밀번호가 일치하지 않습니다!";
                $("#password_group").addClass("fail");
                $("#password_group").removeClass("success");
            }
        }
    })
    $('#pwd_confirm').change(function() {
        if($("#user_pwd").val().length>0 && $("#pwd_confirm").val().length>0){
            if($("#user_pwd").val()==$("#pwd_confirm").val()){
                $('#error_msg_password').css({
                    "display" : "inline-block",
                    "color" : "#85CE36",
                })
                document.getElementById('error_msg_password').innerText = "비밀번호 일치";
                $("#password_group").addClass("success");
                $("#password_group").removeClass("fail");
            }else{
                $('#error_msg_password').css({
                    "display" : "inline-block",
                    "color" : "#FF4444",
                })
                document.getElementById('error_msg_password').innerText = "비밀번호가 일치하지 않습니다!";
                $("#password_group").addClass("fail");
                $("#password_group").removeClass("success");
            }
        }
    })

    // 이름 작성여부 판별(여기선 판별만하고 액션은 버튼에 달린 함수에서 실행)
    $('#lastname').change(function() {
        if(($("#lastname").val().length>0) && ($("#firstname").val()).length>0){
            $("#name_group").addClass("success");
            $("#name_group").removeClass("fail");
        }else{
            $("#name_group").addClass("fail");
            $("#name_group").removeClass("success");
        }
    })
    $('#firstname').change(function() {
        if(($("#lastname").val().length>0) && ($("#firstname").val()).length>0){
            $("#name_group").addClass("success");
            $("#name_group").removeClass("fail");
        }else{
            $("#name_group").addClass("fail");
            $("#name_group").removeClass("success");
        }
    })

    // 아이디/이메일 작성여부 판별(여기선 판별만하고 액션은 버튼에 달린 함수에서 실행)
    $('#user_id').change(function() {
        if($("#user_id").val().length>0){
            $("#id_group").addClass("success");
            $("#id_group").removeClass("fail");
        }else{
            $("#id_group").addClass("fail");
            $("#id_group").removeClass("success");
        }
    })
    $('#user_email').change(function() {
        if($("#user_email").val().length>0){
            $("#id_group").addClass("success");
            $("#id_group").removeClass("fail");
        }else{
            $("#id_group").addClass("fail");
            $("#id_group").removeClass("success");
        }
    })
});

// 필수사항 입력 후 버튼클릭시 발생하는 작업
function go_join_detail(){
    // 필수사항에 대한 논리확인, 조건을 만족하면 True, 아니면 False 반환
    var valid_name_fail = $("#name_group").hasClass("fail");
    var valid_name_success = $("#name_group").hasClass("success");
    var valid_id_fail = $("#id_group").hasClass("fail");
    var valid_id_success = $("#id_group").hasClass("success");
    var valid_pwd_fail = $("#password_group").hasClass("fail");
    var valid_pwd_success = $("#password_group").hasClass("success");
    var id = null;
    
    // id 형식에 따른 id값 반환
    if ($("#user_id_group").hasClass("active")){
        id = $("#user_id").val();
    };
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

    // 모두 잘 적은 경우
    if (valid_name_success && valid_id_success && valid_pwd_success){
        $('#essential_box').animate({
            left : '-85%',
        })
        $('#detailed_box').animate({
            left : '10%',
        })

        // $('#submit_join1').attr("type", "button");
        // $('#submit_join2').attr("type", "submit");
        $('#image_essential').css({
           'background-image' : 'url(http://localhost:13131/golf/resources/static/images/join2.jpg)',
        });
        document.getElementById('image_essential_text').innerText = "상세정보를 입력해 주세요(생략가능)";
        var text = "환영합니다, "+id+" !";
        document.getElementById('join_text').innerText = text;

        // 탭순서 변경
        document.getElementById('lastname').tabIndex = "-1";
        document.getElementById('firstname').tabIndex = "-1";
        document.getElementById('user_id').tabIndex = "-1";
        document.getElementById('user_email').tabIndex = "-1";
        document.getElementById('email_type').tabIndex = "-1";
        document.getElementById('user_pwd').tabIndex = "-1";
        document.getElementById('pwd_confirm').tabIndex = "-1";
        document.getElementById('phone').tabIndex = "1";
        document.getElementById('gender').tabIndex = "2";
        document.getElementById('year').tabIndex = "3";
        document.getElementById('month').tabIndex = "4";
        document.getElementById('date').tabIndex = "5";
        document.getElementById('iron_distance').tabIndex = "6";
        document.getElementById('driver_distance').tabIndex = "7";
        document.getElementById('score').tabIndex = "8";
        document.getElementById('submit_join2').tabIndex = "9";

        // 보여주는 박스에 active클래스 부여/ 숨기는 박스에서는 삭제
        $("#detailed_box").addClass("active");
        $("#essential_box").removeClass("active");

        // 시간지연해서 0.4초후 비밀번호 input 창에 포커스 주기
        setTimeout(function(){document.getElementById("phone").focus();},400);
        return false;
    }else{
    };

    // 각 그룹에서 누락된 요소가 있는 경우
    // 이름
    if (valid_name_fail){
        document.getElementById('error_msg_name').innerText = "이름을 입력해야 합니다!";
        $('#error_msg_name').css({
            "display" : "inline-block",
            "color" : "#FF4444",
        })
    };
    
    // 아이디
    if (valid_id_fail){
        document.getElementById('error_msg_id').innerText = "아이디 또는 이메일을 입력해야 합니다!";
        $('#error_msg_id').css({
            "display" : "inline-block",
            "color" : "#FF4444",
        })
    };

    // 비밀번호
    if (valid_pwd_fail){
        document.getElementById('error_msg_password').innerText = "비밀번호를 제대로 입력해야 합니다!";
        $('#error_msg_password').css({
            "display" : "inline-block",
            "color" : "#FF4444",
        })
    };

    // 로그인 창 범람방지
    if (valid_name_fail && valid_id_fail){
        $('#join_essential').css({
            "margin-top" : "0",
        })
    }else{
        $('#join_essential').css({
            "margin-top" : "10%",
        })
    }

    // 재입력 잘 한것들 처리
    if (valid_name_success){
        $('#error_msg_name').css({
            "display" : "none",
        })
    };
    if (valid_id_success){
        $('#error_msg_id').css({
            "display" : "none",
        })
    };
    if (valid_pwd_success){
        $('#error_msg_password').css({
            "display" : "none",
        })
    };
};

// 엔터키를 치면 발생하는 함수
function pushenter() {
    if (window.event.keyCode == 13) {
        if ($("#essential_box").hasClass("active")){
            document.getElementById('submit_join1').click();
            return false;
        };
        if ($("#detailed_box").hasClass("active")){
            document.getElementById('submit_join2').click();
            return false;
        };
        
        if ($("#ID_box").hasClass("active")){
            document.getElementById('submit_id').click();
            return false;
        };
        if ($("#pwd_box").hasClass("active")){
            document.getElementById('submit_pwd').click();
            return false;
        };
    };
}

// 전화번호, 연도 등의 숫자개수 제한
function handleOnInput(el, maxlength) {
    if(el.value.length > maxlength)  {
      el.value 
        = el.value.substr(0, maxlength);
    }
}

// 로그인 상태 판별 후 액션
//$(window).load(function () {
//	if(window.sessionStorage.getItem("login_state")=="Y"){
//    	// 로그인 상태박스에 active클래스 부여/ 로그아웃 상태 박스에서는 삭제
//        $("#login_state").addClass("active");
//        $("#logout_state").removeClass("active");
//    }else{
//    	// 로그아웃 상태박스에 active클래스 부여/ 로그인 상태 박스에서는 삭제
//        $("#logout_state").addClass("active");
//        $("#login_state").removeClass("active");
//  	};
//});