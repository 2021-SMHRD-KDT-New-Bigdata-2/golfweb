package kr.golfproject.golf;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.golfproject.domain.tbl_member;
import kr.golfproject.mapper.tbl_memberMapper;


@Controller
public class golfController {
	// REST API 만들기=>method 
	@Autowired
	tbl_memberMapper mapper;
	
	// 메인페이지 접속 : http://localhost:13131/golf/
	@RequestMapping("/")
	public String main() {
		return "index";
	}
	
	// 링크를 통한 메인페이지 접속 : http://localhost:13131/golf/index.html
	@RequestMapping("/index")
	public String main2() {
		return "index";
	}
	
	// 로그인 페이지 접속 : http://localhost:13131/golf/login.html
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
	// 회원 가입 페이지 접속 : http://localhost:13131/golf/join.html
	@RequestMapping("/join")
	public String join() {
		return "join";
	}
	
	//회원가입 버튼 클릭
	@RequestMapping("/tbl_member_Join.do")
	public String tbl_member_Join(tbl_member vo) {
		mapper.tbl_member_Join(vo);
		return "redirect:/";
		
	}
	
	// 분석 목록페이지 접속 : http://localhost:13131/golf/test_list.html
	@RequestMapping("/test_list")
	public String test_list() {
		return "test_list";
	}
	
	// 영상 업로드 페이지 접속: http://localhost:13131/golf/upload_movie.html
	@RequestMapping("/upload_movie")
	public String upload_movie() {
		return "upload_movie";
	}
	
	// 영상비교/분석결과보는 페이지 접속 :  http://localhost:13131/golf/video_compared.html
	@RequestMapping("/video_compared")
	public String video_compared() {
		return "video_compared";
	}
}

