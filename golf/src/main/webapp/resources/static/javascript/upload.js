$(document).ready(function(){
    var fileTarget = $('.filebox .upload-hidden');
    var directory = 'http://localhost:13131/golf/resources/static/testmovie/';
 
     fileTarget.on('change', function(){
         if(window.FileReader){
             // 파일명 추출
             var filename = $(this)[0].files[0].name;
         } 
 
         else {
             // Old IE 파일명 추출
             var filename = $(this).val().split('/').pop().split('\\').pop();
         };

		//var file = document.getElementById('input_file');
		//파일 경로.
		//var filePath = file.value;
		// alert(filePath);


		// 파일이름 +내부경로
		filename = directory + filename;
		
        // 동영상 넣어달라는 문구 지우기
        $("#upload_sign").hide();
	
        $(this).siblings('.upload-name').val(filename);

        // var filePath=$('.filebox .upload-hidden').val(); 

        //선택한 버튼의 동영상 경로를 불러옴
        $("#movie_src").attr("src", filename);
        // $("#movie_src").attr("src", $(filename).attr("value"));
        
        //동영상을 다시 load 함
        $("#a_video").load();
        //load한 동영상을 재생
        document.getElementById("a_video").play();
        document.getElementById("a_video").controls = "True";

        $("#videobox").css({
            "border": "none"
        })
     });

 });

 // 드래그앤 드롭
 $('.videobox')
  .on("dragover", dragOver)
  .on("dragleave", dragOver)
  .on("drop", uploadFiles);
 
function dragOver(e){
  e.stopPropagation();
  e.preventDefault();
}
 
function uploadFiles(e){
  e.stopPropagation();
  e.preventDefault();
}

function dragOver(e) {
    e.stopPropagation();
    e.preventDefault();
    if (e.type == "dragover") {
        $(e.target).css({
            "background-color": "grey",
            "outline-offset": "-20px"
        });
    } else {
        $(e.target).css({
            "background-color": "white",
            "outline-offset": "-10px"
        });
    }
}

function uploadFiles(e) {
    e.stopPropagation();
    e.preventDefault();
    dragOver(e); //1
 
    e.dataTransfer = e.originalEvent.dataTransfer; //2
    var files = e.target.files || e.dataTransfer.files;

    if (files.length > 1) {
        alert('하나의 파일만 올릴 수 있습니다.');
        return;
    }

    if (files[0].type.match('video.*')) {
        filename = files[0].name;
        
    var directory = 'http://localhost:13131/golf/resources/static/testmovie/';
    // 파일이름 +내부경로
	filename = directory + filename;
    
    $("#upload_sign").hide();

        $(this).siblings('.upload-name').val(filename);
        
        //var filePath=$('.filebox .upload-hidden').val();  

        //선택한 버튼의 동영상 경로를 불러옴
        $("#movie_src").attr("src", filename);
        // $("#movie_src").attr("src", $(filename).attr("value"));
        //동영상을 다시 load 함
        $("#a_video").load();
        //load한 동영상을 재생
        document.getElementById("a_video").play();
        document.getElementById("a_video").controls = "True";
        document.getElementById("upload-name").value = filename;

        $("#videobox").css({
            "border": "none"
        })
    }else{
        alert('영상파일이 아닙니다.');
        return;
    }
}

// 아이언/드라이버 선택버튼 함수
$(function() {
    $('#swing_type-iron').click(function(){
        $('#swing_type-iron').css({
            "color": "#fff",
            "background-color": "#78bd2e"
        });
        $('#swing_type-driver').css({
            "color": "#78bd2e",
            "background-color": "#fff"
        });
        return false;
    });

    $('#swing_type-driver').click(function(){
        $('#swing_type-iron').css({
            "color": "#78bd2e",
            "background-color": "#fff"
        });
        $('#swing_type-driver').css({
            "color": "#fff",
            "background-color": "#78bd2e"
        });
        return false;
    });
});