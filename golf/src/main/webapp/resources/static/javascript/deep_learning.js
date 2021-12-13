function progress_change() {
    document.getElementById("progress-text").innerHTML = "분석완료!";
   // document.getElementById("compare-text").innerHTML = "분석완료!";
    $("#progress-bar").css({
        "width": "100%",
    });
    $("#compare-text").css({
        "color": "#00d2d3",
        "font-weight": "600",
    });
    $("#hidden-text-result").css({
        "visibility": "visible",
    });

    // 분석 완료시 progress클래스에 'complete'클래스 부여
    $("#progress").addClass("complete");
    // $("#progress").removeClass("complete");
};

function progress_change2() {
    document.getElementById("progress-text").innerHTML = "로딩중...";
  //  document.getElementById("compare-text").innerHTML = "분석중...";
    document.getElementById("hidden-text-result").innerHTML = "상세정보 열기";
    $("#progress-bar").css({
        "width": "60%",
    });
    $("#compare-text").css({
        "color": "#4f5f6f",
        "font-weight": "400",
    });
    $("#hidden-text-result").css({
        "visibility": "hidden",
    });
    $(".content.dashboard-page").css({
        "min-height": "1200px",
    });
    $("#hidden-contents").removeClass("open");
    $("#progress").removeClass("complete");
};

$('#toggle').click(function() {
    if($("#hidden-contents").hasClass("open")) {
        document.getElementById("hidden-text-result").innerHTML = "상세정보 열기";
        $(".content.dashboard-page").css({
            "min-height": "1200px",
        });
        $("#hidden-contents").removeClass("open");
    }else{
        document.getElementById("hidden-text-result").innerHTML = "상세정보 닫기";
        $(".content.dashboard-page").css({
            "min-height": "3000px",
        });
        $("#hidden-contents").addClass("open");
    }
});

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
		
		setTimeout(function(){
			$('#point_link_head').animate({
				left: '100px',
				top : '200px',
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
$('#picture_link2').click(function() {
	if($(this).hasClass("column2")){
		var test = document.getElementById("columnimage2"); 
		var style = window.getComputedStyle(test).getPropertyValue('background-image');
		$("#picture_link2").addClass("selected");
		$(".picture_selected").css({
			"background-image": style,
		});
		
		setTimeout(function(){
			$('#point_link_head').animate({
				left: '750px',
				top : '350px',
	        });
			$('#point_link_shoulder').animate({
				left: '100px',
				top : '200px',
	        });
			$('#point_link_arm').animate({
				left: '400px',
				top : '500px',
	        });
			$('#point_link_waist').animate({
				left: '110px',
				top : '870px',
	        });
			$('#point_link_pelvis').animate({
				left: '440px',
				top : '550px',
	        });
			$('#point_link_knee').animate({
				left: '330px',
				top : '220px',
	        });
			$('#point_link_foot').animate({
				left: '400px',
				top : '200px',
	        });
			$('#point_link_cg').animate({
				left: '200px',
				top : '100px',
	        });
			},200);
	};
});
$('#picture_link3').click(function() {
	if($(this).hasClass("column3")){
		var test = document.getElementById("columnimage3"); 
		var style = window.getComputedStyle(test).getPropertyValue('background-image');
		$("#picture_link3").addClass("selected");
		$(".picture_selected").css({
			"background-image": style,
		});
		
		setTimeout(function(){
			$('#point_link_head').animate({
				left: '110px',
				top : '120px',
	        });
			$('#point_link_shoulder').animate({
				left: '220px',
				top : '330px',
	        });
			$('#point_link_arm').animate({
				left: '440px',
				top : '550px',
	        });
			$('#point_link_waist').animate({
				left: '110px',
				top : '110px',
	        });
			$('#point_link_pelvis').animate({
				left: '220px',
				top : '220px',
	        });
			$('#point_link_knee').animate({
				left: '220px',
				top : '550px',
	        });
			$('#point_link_foot').animate({
				left: '400px',
				top : '200px',
	        });
			$('#point_link_cg').animate({
				left: '600px',
				top : '100px',
	        });
			},200);
	};
});
$('#picture_link4').click(function() {
	if($(this).hasClass("column4")){
		var test = document.getElementById("columnimage4"); 
		var style = window.getComputedStyle(test).getPropertyValue('background-image');
		$("#picture_link4").addClass("selected");
		$(".picture_selected").css({
			"background-image": style,
		});
		setTimeout(function(){
			$('#point_link_head').animate({
				left: '110px',
				top : '220px',
	        });
			$('#point_link_shoulder').animate({
				left: '330px',
				top : '300px',
	        });
			$('#point_link_arm').animate({
				left: '600px',
				top : '500px',
	        });
			$('#point_link_waist').animate({
				left: '410px',
				top : '570px',
	        });
			$('#point_link_pelvis').animate({
				left: '440px',
				top : '250px',
	        });
			$('#point_link_knee').animate({
				left: '130px',
				top : '620px',
	        });
			$('#point_link_foot').animate({
				left: '300px',
				top : '400px',
	        });
			$('#point_link_cg').animate({
				left: '700px',
				top : '500px',
	        });
			},200);
	};
});
$('#picture_link5').click(function() {
	if($(this).hasClass("column5")){
		var test = document.getElementById("columnimage5"); 
		var style = window.getComputedStyle(test).getPropertyValue('background-image');
		$("#picture_link5").addClass("selected");
		$(".picture_selected").css({
			"background-image": style,
		});
		
		setTimeout(function(){
			$('#point_link_head').animate({
				left: '110px',
				top : '330px',
	        });
			$('#point_link_shoulder').animate({
				left: '140px',
				top : '470px',
	        });
			$('#point_link_arm').animate({
				left: '300px',
				top : '700px',
	        });
			$('#point_link_waist').animate({
				left: '210px',
				top : '370px',
	        });
			$('#point_link_pelvis').animate({
				left: '140px',
				top : '750px',
	        });
			$('#point_link_knee').animate({
				left: '230px',
				top : '420px',
	        });
			$('#point_link_foot').animate({
				left: '700px',
				top : '700px',
	        });
			$('#point_link_cg').animate({
				left: '300px',
				top : '300px',
	        });
			},200);
	};
});
$('#picture_link6').click(function() {
	if($(this).hasClass("column6")){
		var test = document.getElementById("columnimage6"); 
		var style = window.getComputedStyle(test).getPropertyValue('background-image');
		$("#picture_link6").addClass("selected");
		$(".picture_selected").css({
			"background-image": style,
		});
		setTimeout(function(){
			$('#point_link_head').animate({
				left: '300px',
				top : '300px',
	        });
			$('#point_link_shoulder').animate({
				left: '300px',
				top : '300px',
	        });
			$('#point_link_arm').animate({
				left: '300px',
				top : '300px',
	        });
			$('#point_link_waist').animate({
				left: '300px',
				top : '300px',
	        });
			$('#point_link_pelvis').animate({
				left: '300px',
				top : '300px',
	        });
			$('#point_link_knee').animate({
				left: '300px',
				top : '300px',
	        });
			$('#point_link_foot').animate({
				left: '300px',
				top : '300px',
	        });
			$('#point_link_cg').animate({
				left: '300px',
				top : '300px',
	        });
			},200);
	};
});
$('#picture_link7').click(function() {
	if($(this).hasClass("column7")){
		var test = document.getElementById("columnimage7"); 
		var style = window.getComputedStyle(test).getPropertyValue('background-image');
		$("#picture_link7").addClass("selected");
		$(".picture_selected").css({
			"background-image": style,
		});
		setTimeout(function(){
			$('#point_link_head').animate({
				left: '750px',
				top : '750px',
	        });
			$('#point_link_shoulder').animate({
				left: '600px',
				top : '600px',
	        });
			$('#point_link_arm').animate({
				left: '500px',
				top : '500px',
	        });
			$('#point_link_waist').animate({
				left: '410px',
				top : '570px',
	        });
			$('#point_link_pelvis').animate({
				left: '440px',
				top : '450px',
	        });
			$('#point_link_knee').animate({
				left: '330px',
				top : '320px',
	        });
			$('#point_link_foot').animate({
				left: '200px',
				top : '200px',
	        });
			$('#point_link_cg').animate({
				left: '300px',
				top : '300px',
	        });
			},200);
	};
});

// 분석텍스트창 클릭시 내용을 모두 보여주는 함수
$('.recommend-text').click(function() { 
	if($(this).hasClass("head-text")){
		if ($("#head-text").hasClass("open")){
			$("#head-text").removeClass("open");
			// 이미 설명창이 펴졌으면 설명창 접기
			$(".head-text").css({
				"-webkit-line-clamp": "2",
				"display": "-webkit-box",
				"overflow": "hidden",
				"padding-bottom": "0",
			});
			$(".swing_recommend.head").css({
				"height": "97px",
				"max-height": "100px",
			});
		}else{
			$("#head-text").addClass("open");
			// 설명창 펴기
			$(".head-text").css({
				"-webkit-line-clamp": "inherit",
				"display": "inline-block",
				"overflow": "visible",
				"padding-bottom": "9px",
			});
			$(".swing_recommend.head").css({
				"height": "auto",
				"max-height": "none",
			});
		};
	};
	if($(this).hasClass("shoulder-text")) {
		if ($("#shoulder-text").hasClass("open")){
			$("#shoulder-text").removeClass("open");
			// 이미 설명창이 펴졌으면 설명창 접기
			$(".shoulder-text").css({
				"-webkit-line-clamp": "2",
				"display": "-webkit-box",
				"overflow": "hidden",
				"padding-bottom": "0",
			});
			$(".swing_recommend.shoulder").css({
				"height": "97px",
				"max-height": "100px",
			});
		}else{
			$("#shoulder-text").addClass("open");
			// 설명창 펴기
			$(".shoulder-text").css({
				"-webkit-line-clamp": "inherit",
				"display": "inline-block",
				"overflow": "visible",
				"padding-bottom": "9px",
			});
			$(".swing_recommend.shoulder").css({
				"height": "auto",
				"max-height": "none",
			});
		};
	};
	if($(this).hasClass("arm-text")) {
		if ($("#arm-text").hasClass("open")){
			$("#arm-text").removeClass("open");
			// 이미 설명창이 펴졌으면 설명창 접기
			$(".arm-text").css({
				"-webkit-line-clamp": "2",
				"display": "-webkit-box",
				"overflow": "hidden",
				"padding-bottom": "0",
			});
			$(".swing_recommend.arm").css({
				"height": "97px",
				"max-height": "100px",
			});
		}else{
			$("#arm-text").addClass("open");
			// 설명창 펴기
			$(".arm-text").css({
				"-webkit-line-clamp": "inherit",
				"display": "inline-block",
				"overflow": "visible",
				"padding-bottom": "9px",
			});
			$(".swing_recommend.arm").css({
				"height": "auto",
				"max-height": "none",
			});
		};
	};
	if($(this).hasClass("waist-text")) {
		if ($("#waist-text").hasClass("open")){
			$("#waist-text").removeClass("open");
			// 이미 설명창이 펴졌으면 설명창 접기
			$(".waist-text").css({
				"-webkit-line-clamp": "2",
				"display": "-webkit-box",
				"overflow": "hidden",
				"padding-bottom": "0",
			});
			$(".swing_recommend.waist").css({
				"height": "97px",
				"max-height": "100px",
			});
		}else{
			$("#waist-text").addClass("open");
			// 설명창 펴기
			$(".waist-text").css({
				"-webkit-line-clamp": "inherit",
				"display": "inline-block",
				"overflow": "visible",
				"padding-bottom": "9px",
			});
			$(".swing_recommend.waist").css({
				"height": "auto",
				"max-height": "none",
			});
		};
	};
	if($(this).hasClass("pelvis-text")) {
		if ($("#pelvis-text").hasClass("open")){
			$("#pelvis-text").removeClass("open");
			// 이미 설명창이 펴졌으면 설명창 접기
			$(".pelvis-text").css({
				"-webkit-line-clamp": "2",
				"display": "-webkit-box",
				"overflow": "hidden",
				"padding-bottom": "0",
			});
			$(".swing_recommend.pelvis").css({
				"height": "97px",
				"max-height": "100px",
			});
		}else{
			$("#pelvis-text").addClass("open");
			// 설명창 펴기
			$(".pelvis-text").css({
				"-webkit-line-clamp": "inherit",
				"display": "inline-block",
				"overflow": "visible",
				"padding-bottom": "9px",
			});
			$(".swing_recommend.pelvis").css({
				"height": "auto",
				"max-height": "none",
			});
		};
	};
	if($(this).hasClass("knee-text")) {
		if ($("#knee-text").hasClass("open")){
			$("#knee-text").removeClass("open");
			// 이미 설명창이 펴졌으면 설명창 접기
			$(".knee-text").css({
				"-webkit-line-clamp": "2",
				"display": "-webkit-box",
				"overflow": "hidden",
				"padding-bottom": "0",
			});
			$(".swing_recommend.knee").css({
				"height": "97px",
				"max-height": "100px",
			});
		}else{
			$("#knee-text").addClass("open");
			// 설명창 펴기
			$(".knee-text").css({
				"-webkit-line-clamp": "inherit",
				"display": "inline-block",
				"overflow": "visible",
				"padding-bottom": "9px",
			});
			$(".swing_recommend.knee").css({
				"height": "auto",
				"max-height": "none",
			});
		};
	};
	if($(this).hasClass("foot-text")) {
		if ($("#foot-text").hasClass("open")){
			$("#foot-text").removeClass("open");
			// 이미 설명창이 펴졌으면 설명창 접기
			$(".foot-text").css({
				"-webkit-line-clamp": "2",
				"display": "-webkit-box",
				"overflow": "hidden",
				"padding-bottom": "0",
			});
			$(".swing_recommend.foot").css({
				"height": "97px",
				"max-height": "100px",
			});
		}else{
			$("#foot-text").addClass("open");
			// 설명창 펴기
			$(".foot-text").css({
				"-webkit-line-clamp": "inherit",
				"display": "inline-block",
				"overflow": "visible",
				"padding-bottom": "9px",
			});
			$(".swing_recommend.foot").css({
				"height": "auto",
				"max-height": "none",
			});
		};
	};
	if($(this).hasClass("cg-text")) {
		if ($("#cg-text").hasClass("open")){
			$("#cg-text").removeClass("open");
			// 이미 설명창이 펴졌으면 설명창 접기
			$(".cg-text").css({
				"-webkit-line-clamp": "2",
				"display": "-webkit-box",
				"overflow": "hidden",
				"padding-bottom": "0",
			});
			$(".swing_recommend.cg").css({
				"height": "97px",
				"max-height": "100px",
			});
		}else{
			$("#cg-text").addClass("open");
			// 설명창 펴기
			$(".cg-text").css({
				"-webkit-line-clamp": "inherit",
				"display": "inline-block",
				"overflow": "visible",
				"padding-bottom": "9px",
			});
			$(".swing_recommend.cg").css({
				"height": "auto",
				"max-height": "none",
			});
		}; 
	};
});

// 자세교정지점에 마우스를 대면 해당 설명에 하이라이트 부여
// 머리
$('#point_link_head').hover(function() {
	$("#recommend-title-head").css({
		"color": "#00B0FF",
		"border-bottom":"1px solid #00B0FF",
	});
	$("#head-text").css({
		"color": "#00B0FF",
	});
	$(".swing_recommend.head").css({
		"border-bottom":"1px solid #00B0FF",
	});
}, function(){
	$("#recommend-title-head").css({
		"color": "#212529",
		"border-bottom":"1px solid rgba(0, 0, 0, 0.125)",
	});
	$("#head-text").css({
		"color": "#212529",
	});
	$(".swing_recommend.head").css({
		"border-bottom":"1px solid rgba(0, 0, 0, 0.125)",
	});
});

// 어꺠
$('#point_link_shoulder').hover(function() {
	$("#recommend-title-shoulder").css({
		"color": "#00B0FF",
		"border-bottom":"1px solid #00B0FF",
	});
	$("#shoulder-text").css({
		"color": "#00B0FF",
	});
	$(".swing_recommend.shoulder").css({
		"border-bottom":"1px solid #00B0FF",
	});
}, function(){
	$("#recommend-title-shoulder").css({
		"color": "#212529",
		"border-bottom":"1px solid rgba(0, 0, 0, 0.125)",
	});
	$("#shoulder-text").css({
		"color": "#212529",
	});
	$(".swing_recommend.shoulder").css({
		"border-bottom":"1px solid rgba(0, 0, 0, 0.125)",
	});
});

// 팔
$('#point_link_arm').hover(function() {
	$("#recommend-title-arm").css({
		"color": "#00B0FF",
		"border-bottom":"1px solid #00B0FF",
	});
	$("#arm-text").css({
		"color": "#00B0FF",
	});
	$(".swing_recommend.arm").css({
		"border-bottom":"1px solid #00B0FF",
	});
}, function(){
	$("#recommend-title-arm").css({
		"color": "#212529",
		"border-bottom":"1px solid rgba(0, 0, 0, 0.125)",
	});
	$("#arm-text").css({
		"color": "#212529",
	});
	$(".swing_recommend.arm").css({
		"border-bottom":"1px solid rgba(0, 0, 0, 0.125)",
	});
});

// 허리
$('#point_link_waist').hover(function() {
	$("#recommend-title-waist").css({
		"color": "#00B0FF",
		"border-bottom":"1px solid #00B0FF",
	});
	$("#waist-text").css({
		"color": "#00B0FF",
	});
	$(".swing_recommend.waist").css({
		"border-bottom":"1px solid #00B0FF",
	});
}, function(){
	$("#recommend-title-waist").css({
		"color": "#212529",
		"border-bottom":"1px solid rgba(0, 0, 0, 0.125)",
	});
	$("#waist-text").css({
		"color": "#212529",
	});
	$(".swing_recommend.waist").css({
		"border-bottom":"1px solid rgba(0, 0, 0, 0.125)",
	});
});

// 골반
$('#point_link_pelvis').hover(function() {
	$("#recommend-title-pelvis").css({
		"color": "#00B0FF",
		"border-bottom":"1px solid #00B0FF",
	});
	$("#pelvis-text").css({
		"color": "#00B0FF",
	});
	$(".swing_recommend.pelvis").css({
		"border-bottom":"1px solid #00B0FF",
	});
}, function(){
	$("#recommend-title-pelvis").css({
		"color": "#212529",
		"border-bottom":"1px solid rgba(0, 0, 0, 0.125)",
	});
	$("#pelvis-text").css({
		"color": "#212529",
	});
	$(".swing_recommend.pelvis").css({
		"border-bottom":"1px solid rgba(0, 0, 0, 0.125)",
	});
});

// 무릎
$('#point_link_knee').hover(function() {
	$("#recommend-title-knee").css({
		"color": "#00B0FF",
		"border-bottom":"1px solid #00B0FF",
	});
	$("#knee-text").css({
		"color": "#00B0FF",
	});
	$(".swing_recommend.knee").css({
		"border-bottom":"1px solid #00B0FF",
	});
}, function(){
	$("#recommend-title-knee").css({
		"color": "#212529",
		"border-bottom":"1px solid rgba(0, 0, 0, 0.125)",
	});
	$("#knee-text").css({
		"color": "#212529",
	});
	$(".swing_recommend.knee").css({
		"border-bottom":"1px solid rgba(0, 0, 0, 0.125)",
	});
});

// 발
$('#point_link_foot').hover(function() {
	$("#recommend-title-foot").css({
		"color": "#00B0FF",
		"border-bottom":"1px solid #00B0FF",
	});
	$("#foot-text").css({
		"color": "#00B0FF",
	});
	$(".swing_recommend.foot").css({
		"border-bottom":"1px solid #00B0FF",
	});
}, function(){
	$("#recommend-title-foot").css({
		"color": "#212529",
		"border-bottom":"1px solid rgba(0, 0, 0, 0.125)",
	});
	$("#foot-text").css({
		"color": "#212529",
	});
	$(".swing_recommend.foot").css({
		"border-bottom":"1px solid rgba(0, 0, 0, 0.125)",
	});
});

// 무게중심
$('#point_link_cg').hover(function() {
	$("#recommend-title-cg").css({
		"color": "#00B0FF",
		"border-bottom":"1px solid #00B0FF",
	});
	$("#cg-text").css({
		"color": "#00B0FF",
	});
	$(".swing_recommend.cg").css({
		"border-bottom":"1px solid #00B0FF",
	});
}, function(){
	$("#recommend-title-cg").css({
		"color": "#212529",
		"border-bottom":"1px solid rgba(0, 0, 0, 0.125)",
	});
	$("#cg-text").css({
		"color": "#212529",
	});
	$(".swing_recommend.cg").css({
		"border-bottom":"1px solid rgba(0, 0, 0, 0.125)",
	});
});

