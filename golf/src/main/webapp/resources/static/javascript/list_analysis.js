// 페이지에 따라 자동으로 영상이 보여지는 함수
$(function() {
    var directory = 'http://localhost:13131/golf/resources/static/testmovie/';
    var video1 = document.getElementById('block_1').className;
    var video2 = document.getElementById('block_2').className;
    var video3 = document.getElementById('block_3').className;
    var video4 = document.getElementById('block_4').className;
    var video5 = document.getElementById('block_5').className;
    var video6 = document.getElementById('block_6').className;

    var text1 = video1.replace('movie_column first_column videono','');
    var text2 = video2.replace('movie_column second_column videono','');
    var text3 = video3.replace('movie_column third_column videono','');
    var text4 = video4.replace('movie_column first_column videono','');
    var text5 = video5.replace('movie_column second_column videono','');
    var text6 = video6.replace('movie_column third_column videono','');

    var filetype = ".mp4";
    var dir1 = directory + text1 + filetype;
    var dir2 = directory + text2 + filetype;
    var dir3 = directory + text3 + filetype;
    var dir4 = directory + text4 + filetype;
    var dir5 = directory + text5 + filetype;
    var dir6 = directory + text6 + filetype;

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

// 페이지바 클릭시 발생하는 함수
// 숫자
function move_page_num(pgnum,prevpgnum) {
    var addclasstext = null;
    var idtext = null;
    var index = 0;
    var preindex = 0;
    var directory = '../../static/testmovie/';
    document.getElementById("present_pgnum").innerHTML = pgnum;

    for(var i=0; i<6; i++){
        index = 6*(pgnum-1)+1+i;
        preindex = 6*(prevpgnum-1)+1+i;

        if(preindex<10){
            removeclasstext = "videono0"+String(preindex);
        }else{
            removeclasstext = "videono"+String(preindex);
        };

        if(index<10){
            addclasstext = "videono0"+String(index);
        }else{
            addclasstext = "videono"+String(index);
        };
        
        idtext = "#block_"+(i+1);

        $(idtext).removeClass(removeclasstext);
        $(idtext).addClass(addclasstext);
    }

    var page_idtext = "#page-link-num"+String(pgnum);
    var prepage_idtext = "#page-link-num"+String(prevpgnum);

    if(pgnum==prevpgnum){
        return false;
    }else{
        $(page_idtext).css({
            "color": "#fff",
            "border-color": "#44bd32",
            "background-color": "#44bd32",
        })
    
        $(prepage_idtext).css({
            "color": "#85CE36",
            "border-color": "#ddd",
            "background-color": "#fff",
        })
    };

    // 페이지에 따라 영상 바뀌게 하는 부분
    var directory = 'http://localhost:13131/golf/resources/static/testmovie/';
    
    var video1 = document.getElementById('block_1').className;
    var video2 = document.getElementById('block_2').className;
    var video3 = document.getElementById('block_3').className;
    var video4 = document.getElementById('block_4').className;
    var video5 = document.getElementById('block_5').className;
    var video6 = document.getElementById('block_6').className;

    var text1 = video1.replace('movie_column first_column videono','');
    var text2 = video2.replace('movie_column second_column videono','');
    var text3 = video3.replace('movie_column third_column videono','');
    var text4 = video4.replace('movie_column first_column videono','');
    var text5 = video5.replace('movie_column second_column videono','');
    var text6 = video6.replace('movie_column third_column videono','');

    var filetype = ".mp4";
    var dir1 = directory + text1 + filetype;
    var dir2 = directory + text2 + filetype;
    var dir3 = directory + text3 + filetype;
    var dir4 = directory + text4 + filetype;
    var dir5 = directory + text5 + filetype;
    var dir6 = directory + text6 + filetype;

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

};

// 목록의 썸네일 사이즈 조정
$(window).load(setTimeout(function () {
	var height1 = document.getElementById('video1').clientHeight;
    var height2 = document.getElementById('video2').clientHeight;
    var height3 = document.getElementById('video3').clientHeight;
    var height4 = document.getElementById('video4').clientHeight;
    var height5 = document.getElementById('video5').clientHeight;
    var height6 = document.getElementById('video6').clientHeight;
    var width = document.getElementById('analysis_list-textbox').clientWidth;
    
    var list_h = [height1, height2,height3, height4, height5, height6];
    var min = Math.min.apply(null, list_h);
    var defalut_h = "270px";
    
    var limit_h=min;
    
    if((height1/width)>0.46){
    	$("#video1").css({
    		"max-height" : limit_h,
    	});
    }else{
    	$("#video1").css({
    		"max-height" : defalut_h,
    	});
    };
    
    if((height2/width)>0.46){
    	$("#video2").css({
    		"max-height" : limit_h,
    	});
    }else{
    	$("#video2").css({
    		"max-height" : defalut_h,
    	});
    };
    
    if((height3/width)>0.46){
    	$("#video3").css({
    		"max-height" : limit_h,
    	});
    }else{
    	$("#video3").css({
    		"max-height" : defalut_h,
    	});
    };
    
    if((height4/width)>0.46){
    	$("#video4").css({
    		"max-height" : limit_h,
    	});
    }else{
    	$("#video4").css({
    		"max-height" : defalut_h,
    	});
    };
    
    
    if((height5/width)>0.46){
    	$("#video5").css({
    		"max-height" : limit_h,
    	});
    }else{
    	$("#video5").css({
    		"max-height" : defalut_h,
    	});
    };
    
    if((height6/width)>0.46){
    	$("#video6").css({
    		"max-height" : limit_h,
    	});
    }else{
    	$("#video6").css({
    		"max-height" : defalut_h,
    	});
    };
    
},200));

// 창크기에 따른 영상크기감지
$(window).resize(function(){
	var height1 = document.getElementById('video1').clientHeight;
    var height2 = document.getElementById('video2').clientHeight;
    var height3 = document.getElementById('video3').clientHeight;
    var height4 = document.getElementById('video4').clientHeight;
    var height5 = document.getElementById('video5').clientHeight;
    var height6 = document.getElementById('video6').clientHeight;
    var width = document.getElementById('analysis_list-textbox').clientWidth;
    
    var list_h = [height1, height2,height3, height4, height5, height6];
    var min = Math.min.apply(null, list_h);
    var defalut_h = "260px";
    
    var limit_h=min;
    
    if((height1/width)>0.46){
    	$("#video1").css({
    		"max-height" : limit_h,
    	});
    }else{
    	$("#video1").css({
    		"max-height" : defalut_h,
    	});
    };
    
    if((height2/width)>0.46){
    	$("#video2").css({
    		"max-height" : limit_h,
    	});
    }else{
    	$("#video2").css({
    		"max-height" : defalut_h,
    	});
    };
    
    if((height3/width)>0.46){
    	$("#video3").css({
    		"max-height" : limit_h,
    	});
    }else{
    	$("#video3").css({
    		"max-height" : defalut_h,
    	});
    };
    
    if((height4/width)>0.46){
    	$("#video4").css({
    		"max-height" : limit_h,
    	});
    }else{
    	$("#video4").css({
    		"max-height" : defalut_h,
    	});
    };
    
    
    if((height5/width)>0.46){
    	$("#video5").css({
    		"max-height" : limit_h,
    	});
    }else{
    	$("#video5").css({
    		"max-height" : defalut_h,
    	});
    };
    
    if((height6/width)>0.46){
    	$("#video6").css({
    		"max-height" : limit_h,
    	});
    }else{
    	$("#video6").css({
    		"max-height" : defalut_h,
    	});
    };
});
	
    
    