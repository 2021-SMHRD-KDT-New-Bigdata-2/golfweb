package kr.golfproject.golf;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.mysql.jdbc.log.Log;

import kr.golfproject.domain.tbl_deeplearning;
import kr.golfproject.domain.tbl_member;
import kr.golfproject.domain.tbl_swing;
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
			int M_idx = vo.getM_idx();
			String M_id = vo.getM_id();
			String M_name = vo.getM_name();
			session.setAttribute("login_idx", M_idx);
			session.setAttribute("login_id", M_id);
			session.setAttribute("login_name", M_name);

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
	public String video_compared(HttpSession session, Model model) {
		if (session.getAttribute("login_state")=="Y") {
			int m_idx = (int)session.getAttribute("login_idx");
			tbl_upload vo = mapper.IRU(m_idx);	
			String upload_subject = "제목없음";
			if(vo.getUpload_subject()!="") {
				upload_subject = vo.getUpload_subject();
			};
			session.setAttribute("recent_upload_subject", upload_subject);
			if(vo!=null) {
				session.setAttribute("recent_upload_info", vo);
				String file = vo.getUpload_file();
				session.setAttribute("recent_upload_file", file);
			};
		};
		return "video_compared";
	}
	@PostMapping("/uploadAjaxAction")
	public @ResponseBody String uploadAjax(MultipartFile[] uploadfile, HttpSession session) {
		System.out.println("업로드중!!");
		//업로드 실제 경로
		String filename=null;
		String uploadfolder = "C:\\Users\\smhrd\\git\\golfweb\\golf\\src\\main\\webapp\\resources\\static\\movie";
		for (MultipartFile mulitipartFile : uploadfile) {
			System.out.println("업로드파일이름 : "+mulitipartFile.getOriginalFilename());
			System.out.println("파일 크기 : "+mulitipartFile.getSize());
			String upload_file = mulitipartFile.getOriginalFilename();
			filename=upload_file;
			upload_file=upload_file.substring(upload_file.lastIndexOf("\\")+1);
			File savefile = new File(uploadfolder,upload_file);
			try {
				mulitipartFile.transferTo(savefile);	
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		filename= filename.replace(".", "_");
		System.out.println("세션저장 이름"+filename);
		session.setAttribute("filename", filename);
		return filename;
	}
	@RequestMapping("/uploadata")
	public @ResponseBody String uploadate(tbl_upload vo){
		String uploadfolder = "C:\\Users\\smhrd\\git\\golfweb\\golf\\src\\main\\webapp\\resources\\static\\movie\\";
		String upload_file= vo.getUpload_file();
		System.out.println(upload_file);
		upload_file=upload_file.replace("_", ".");
		vo.setUpload_file(upload_file);
		String upload_path = uploadfolder+upload_file;
		vo.setUpload_path(upload_path);
		mapper.uploaddata(vo);
		return upload_path;
	};
	
	
	@RequestMapping("/ImportRecentUpload")
	public String ImportRecentUpload(int m_idx, HttpSession session, Model model) {
		tbl_upload vo = mapper.IRU(m_idx);	
		String upload_subject = "제목없음";
		if(vo.getUpload_subject()!="") {
			upload_subject = vo.getUpload_subject();
		};
		session.setAttribute("recent_upload_subject", upload_subject);
		if(vo!=null) {
			session.setAttribute("recent_upload_info", vo);
			String file = vo.getUpload_file();
			session.setAttribute("recent_upload_file", file);
		}
		return "video_compared";
	};
	
	@Async
	@RequestMapping("/LoadSwing")
	public void LoadSwing(int deep_seq, HttpSession session, Model model) {
		tbl_swing vo = mapper.loadswing(deep_seq);	
		if(vo!=null) {
			session.setAttribute("recent_upload_info", vo);
			String head_action = vo.getHead_action();
			String shoulder_action = vo.getShoulder__action();
			String arm_action = vo.getArm__action();
			String waist_action = vo.getWaist_action();
			String core_action = vo.getCore__action();
			String knee_action = vo.getKnee_action();
			String foot_action = vo.getFoot_action();
			String weight_center = vo.getWeight_center();
			
			session.setAttribute("head_action", head_action);
			session.setAttribute("shoulder_action", shoulder_action);
			session.setAttribute("arm_action", arm_action);
			session.setAttribute("waist_action", waist_action);
			session.setAttribute("core_action", core_action);
			session.setAttribute("knee_action", knee_action);
			session.setAttribute("foot_action", foot_action);
			session.setAttribute("weight_center", weight_center);
			
//			model.addAttribute("head_action", head_action);
//			model.addAttribute("shoulder_action", shoulder_action);
//			model.addAttribute("arm_action", arm_action);
//			model.addAttribute("waist_action", waist_action);
//			model.addAttribute("core_action", core_action);
//			model.addAttribute("knee_action", knee_action);
//			model.addAttribute("foot_action", foot_action);
//			model.addAttribute("weight_center", weight_center);
		}
	};
	
	@RequestMapping("/jsontest")
	public @ResponseBody String jsontest(tbl_upload vo) throws IOException {
		RestTest resttest = new RestTest();
		JSONObject job=new JSONObject();
//		{"upload_path":upload_path,"upload_file":upload_file,"upload_subject":upload_title,"club_type":club_type,"m_idx":m_idx},
		job.put("upload_path", vo.getUpload_path());
		job.put("upload_file", vo.getUpload_file());
		job.put("upload_subject", vo.getUpload_subject());
		job.put("club_type", vo.getClub_type());
		job.put("m_idx",vo.getM_idx());
		System.out.println(job);
		String result=resttest.sendJSON(job);
		System.out.println(result);
		return result;

		
	}
}




