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
            "min-height": "2000px",
        });
        $("#hidden-contents").addClass("open");
    }
});
