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
		$(".picture_selected").css({
			"background-image": style,
		});
	};
});
$('#picture_link2').click(function() {
	if($(this).hasClass("column2")){
		var test = document.getElementById("columnimage2"); 
		var style = window.getComputedStyle(test).getPropertyValue('background-image');
		$(".picture_selected").css({
			"background-image": style,
		});
	};
});
$('#picture_link3').click(function() {
	if($(this).hasClass("column3")){
		var test = document.getElementById("columnimage3"); 
		var style = window.getComputedStyle(test).getPropertyValue('background-image');
		$(".picture_selected").css({
			"background-image": style,
		});
	};
});
$('#picture_link4').click(function() {
	if($(this).hasClass("column4")){
		var test = document.getElementById("columnimage4"); 
		var style = window.getComputedStyle(test).getPropertyValue('background-image');
		$(".picture_selected").css({
			"background-image": style,
		});
	};
});
$('#picture_link5').click(function() {
	if($(this).hasClass("column5")){
		var test = document.getElementById("columnimage5"); 
		var style = window.getComputedStyle(test).getPropertyValue('background-image');
		$(".picture_selected").css({
			"background-image": style,
		});
	};
});
$('#picture_link6').click(function() {
	if($(this).hasClass("column6")){
		var test = document.getElementById("columnimage6"); 
		var style = window.getComputedStyle(test).getPropertyValue('background-image');
		$(".picture_selected").css({
			"background-image": style,
		});
	};
});
$('#picture_link7').click(function() {
	if($(this).hasClass("column7")){
		var test = document.getElementById("columnimage7"); 
		var style = window.getComputedStyle(test).getPropertyValue('background-image');
		$(".picture_selected").css({
			"background-image": style,
		});
	};
});