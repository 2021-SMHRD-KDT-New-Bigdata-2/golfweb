package kr.golfproject.golf;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.mysql.jdbc.log.Log;

import kr.golfproject.domain.tbl_member;
import kr.golfproject.domain.tbl_upload;
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
	
	// 로그인시 아이디 입력버튼 클릭
	@RequestMapping("/tbl_member_submit_ID.do")
	public String tbl_member_submit_ID(String m_id, HttpSession session) {
		// 아이디 인증 mapper 연동
		String check_id = mapper.member_submit_ID(m_id);
		
		// 아이디 체크 여부에 따라서 세션(HttpSession)을 만들기
		if(check_id!=null) {
			session.setAttribute("check_id", check_id);	
			return "login";
		} else {
			return "error";
		}
	}
	
	// 로그인 버튼 클릭
	@RequestMapping("/tbl_member_Login.do")
	public String Login(tbl_member vo_forLogin, HttpSession session) {
		// 아이디, 비번 mapper 연동
		tbl_member vo = mapper.Login(vo_forLogin);
		if(vo!=null) {
			session.setAttribute("member_info", vo);
			session.setAttribute("login_state", "Y");
			return "login";
		} else {
			return "error";
		}
		//return "redirect:/";
	}
	
	// 로그아웃 버튼 클릭
		@RequestMapping("/tbl_member_Logout.do")
		public String Logout(HttpSession session) {
			session.invalidate();
			return "redirect:/";
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
	@PostMapping("/uploadAjaxAction")
	public void uploadAjax(MultipartFile[] uploadfile) {
		System.out.println("업로드중!!");
		//업로드 실제 경로
		String uploadfolder = "C:\\Users\\smhrd\\git\\golfweb\\golf\\src\\main\\webapp\\resources\\static\\movie";
		for (MultipartFile mulitipartFile : uploadfile) {
			System.out.println("업로드파일이름 : "+mulitipartFile.getOriginalFilename());
			System.out.println("파일 크기 : "+mulitipartFile.getSize());
			String upload_file = mulitipartFile.getOriginalFilename();
			upload_file=upload_file.substring(upload_file.lastIndexOf("\\")+1);
			File savefile = new File(uploadfolder,upload_file);
			try {
				mulitipartFile.transferTo(savefile);	
			}catch(Exception e){
				e.printStackTrace();
			}
		}
	}
		
}




