package kr.golfproject.golf;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.UUID;

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
import kr.golfproject.domain.tbl_skeleton_video;
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
	public String test_list(HttpSession session, Model model) {
		String login_state = (String)session.getAttribute("login_state");
		List<tbl_upload> list = null;
		if(login_state=="Y") {
			int m_idx = (int)session.getAttribute("login_idx");
			list = mapper.loaduploadlist(m_idx);
			model.addAttribute("list", list);
		};
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
			// 최근 분석결과 띄우기
			int m_idx = (int)session.getAttribute("login_idx");
			System.out.println(m_idx);
			tbl_upload vo_upload = mapper.IRU(m_idx);
			System.out.println(vo_upload);
			String upload_subject = "제목없음";
			if(vo_upload.getUpload_subject()!="") {
				upload_subject = vo_upload.getUpload_subject();
			};
			session.setAttribute("recent_upload_subject", upload_subject);
			if(vo_upload!=null) {
				session.setAttribute("recent_upload_info", vo_upload);		
				String file = vo_upload.getUpload_file();
				session.setAttribute("recent_upload_file", file);
			};
			
			int upload_seq = vo_upload.getUpload_seq();
			session.setAttribute("upload_seq", upload_seq);
			System.out.println(upload_seq);
			// 스윙순간의 이미지 데이터 출력
			tbl_deeplearning vo_deep = mapper.loaddeep(upload_seq);
			System.out.println(vo_deep);
			if (vo_deep != null) {
				session.setAttribute("vo_deep", vo_deep);
				String address = vo_deep.getAddress();
				String top = vo_deep.getTop();
				String downswing = vo_deep.getDownswing();
				String impact = vo_deep.getImpact();
				String followthrough = vo_deep.getFollowthrough();
				session.setAttribute("address", address);
				session.setAttribute("top", top);
				session.setAttribute("downswing", downswing);
				session.setAttribute("impact", impact);
				session.setAttribute("followthrough", followthrough);
			};
			
			vo_upload.setM_idx(m_idx);
			// 스켈레톤 영상 출력
			tbl_skeleton_video vo_skeleton = mapper.loadskeleton(vo_upload);
			if(vo_skeleton!=null) {
				session.setAttribute("skeleton_info", vo_skeleton);
				String file_skeleton = vo_skeleton.getVideo_path();
				session.setAttribute("skeleton_file", file_skeleton);
			};
			
			
<<<<<<< HEAD
//			int deep_seq = vo_deep.getDeep_seq();
//			// 어드레스 스윙데이터 출력
//			String swing_type = "address";
//			
//			tbl_swing vo_swing = mapper.loadswing(deep_seq,swing_type);	
//			if(vo_swing!=null) {
//				session.setAttribute("recent_upload_info", vo_swing);
//				String head_action = vo_swing.getHead_action();
//				String shoulder_action = vo_swing.getShoulder__action();
//				String arm_action = vo_swing.getArm__action();
//				String waist_action = vo_swing.getWaist_action();
//				String core_action = vo_swing.getCore__action();
//				String knee_action = vo_swing.getKnee_action();
//				String foot_action = vo_swing.getFoot_action();
//				String weight_center = vo_swing.getWeight_center();
//				double head_code_x = vo_swing.getHead_code_x();
//				double shoulder_code_x = vo_swing.getShoulder_code_x();
//				double arm_code_x = vo_swing.getArm_code_x();
//				double waist_code_x = vo_swing.getWaist_code_x();
//				double core_code_x = vo_swing.getCore_code_x();
//				double knee_code_x = vo_swing.getKnee_code_x();
//				double foot_code_x = vo_swing.getFoot_code_x();
//				double head_code_y = vo_swing.getHead_code_y();
//				double shoulder_code_y = vo_swing.getShoulder_code_y();
//				double arm_code_y = vo_swing.getArm_code_y();
//				double waist_code_y = vo_swing.getWaist_code_y();
//				double core_code_y = vo_swing.getCore_code_y();
//				double knee_code_y = vo_swing.getKnee_code_y();
//				double foot_code_y = vo_swing.getFoot_code_y();
//				
//				session.setAttribute("head_action", head_action);
//				session.setAttribute("shoulder_action", shoulder_action);
//				session.setAttribute("arm_action", arm_action);
//				session.setAttribute("waist_action", waist_action);
//				session.setAttribute("core_action", core_action);
//				session.setAttribute("knee_action", knee_action);
//				session.setAttribute("foot_action", foot_action);
//				session.setAttribute("weight_center", weight_center);
//				session.setAttribute("head_code_x", head_code_x);
//				session.setAttribute("shoulder_code_x", shoulder_code_x);
//				session.setAttribute("arm_code_x", arm_code_x);
//				session.setAttribute("waist_code_x", waist_code_x);
//				session.setAttribute("core_code_x", core_code_x);
//				session.setAttribute("knee_code_x", knee_code_x);
//				session.setAttribute("foot_code_x", foot_code_x);
//				session.setAttribute("head_code_y", head_code_y);
//				session.setAttribute("shoulder_code_y", shoulder_code_y);
//				session.setAttribute("arm_code_y", arm_code_y);
//				session.setAttribute("waist_code_y", waist_code_y);
//				session.setAttribute("core_code_y", core_code_y);
//				session.setAttribute("knee_code_y", knee_code_y);
//				session.setAttribute("foot_code_y", foot_code_y);
//			};
=======
			int deep_seq = vo_deep.getDeep_seq();
			System.out.println(deep_seq);
			// 어드레스 스윙데이터 출력
			String swing_type = "address";
			tbl_swing vo_swing =new tbl_swing();
			vo_swing.setSwing_type(swing_type);
			vo_swing.setDeep_seq(deep_seq);
			vo_swing = mapper.loadswing(vo_swing);	
			if(vo_swing!=null) {
				session.setAttribute("recent_upload_info", vo_swing);
				String head_action = vo_swing.getHead_action();
				String shoulder_action = vo_swing.getShoulder__action();
				String arm_action = vo_swing.getArm__action();
				String waist_action = vo_swing.getWaist_action();
				String core_action = vo_swing.getCore__action();
				String knee_action = vo_swing.getKnee_action();
				String foot_action = vo_swing.getFoot_action();
				String weight_center = vo_swing.getWeight_center();
				double head_code_x = vo_swing.getHead_code_x();
				double shoulder_code_x = vo_swing.getShoulder_code_x();
				double arm_code_x = vo_swing.getArm_code_x();
				double waist_code_x = vo_swing.getWaist_code_x();
				double core_code_x = vo_swing.getCore_code_x();
				double knee_code_x = vo_swing.getKnee_code_x();
				double foot_code_x = vo_swing.getFoot_code_x();
				double head_code_y = vo_swing.getHead_code_y();
				double shoulder_code_y = vo_swing.getShoulder_code_y();
				double arm_code_y = vo_swing.getArm_code_y();
				double waist_code_y = vo_swing.getWaist_code_y();
				double core_code_y = vo_swing.getCore_code_y();
				double knee_code_y = vo_swing.getKnee_code_y();
				double foot_code_y = vo_swing.getFoot_code_y();
				
				session.setAttribute("head_action", head_action);
				session.setAttribute("shoulder_action", shoulder_action);
				session.setAttribute("arm_action", arm_action);
				session.setAttribute("waist_action", waist_action);
				session.setAttribute("core_action", core_action);
				session.setAttribute("knee_action", knee_action);
				session.setAttribute("foot_action", foot_action);
				session.setAttribute("weight_center", weight_center);
				session.setAttribute("head_code_x", head_code_x);
				session.setAttribute("shoulder_code_x", shoulder_code_x);
				session.setAttribute("arm_code_x", arm_code_x);
				session.setAttribute("waist_code_x", waist_code_x);
				session.setAttribute("core_code_x", core_code_x);
				session.setAttribute("knee_code_x", knee_code_x);
				session.setAttribute("foot_code_x", foot_code_x);
				session.setAttribute("head_code_y", head_code_y);
				session.setAttribute("shoulder_code_y", shoulder_code_y);
				session.setAttribute("arm_code_y", arm_code_y);
				session.setAttribute("waist_code_y", waist_code_y);
				session.setAttribute("core_code_y", core_code_y);
				session.setAttribute("knee_code_y", knee_code_y);
				session.setAttribute("foot_code_y", foot_code_y);
			};
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-New-Bigdata-2/golfweb.git
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
			upload_file=upload_file.substring(upload_file.lastIndexOf("\\")+1);
			UUID uuid = UUID.randomUUID();
			upload_file= uuid.toString() + "-" + upload_file;
			filename=upload_file;
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
	
//	// 스윙순간의 이미지 데이터 출력
//	@RequestMapping("/LoadDeep")
//	public String LoadDeep(int upload_seq, HttpSession session, Model model) {
//		tbl_upload vo = mapper.IRU(upload_seq);	
//		String upload_subject = "제목없음";
//		if(vo.getUpload_subject()!="") {
//			upload_subject = vo.getUpload_subject();
//		};
//		session.setAttribute("recent_upload_subject", upload_subject);
//		if(vo!=null) {
//			session.setAttribute("recent_upload_info", vo);
//			String file = vo.getUpload_file();
//			session.setAttribute("recent_upload_file", file);
//		}
//		return "video_compared";
//	};
	
	// 최근 분석결과 띄우기
		// tbl_upload
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
		
	// tbl_skeleton에서 upload_seq에 맞는 스켈레톤 영상 가져오기
//	@RequestMapping("/ImportSkeleton")
//	public String ImportSkeleton(int m_idx, int upload_seq, HttpSession session, Model model) {
		
	//	tbl_skeleton_video vo = mapper.loadskeleton(m_idx, upload_seq);
		//if(vo!=null) {
			//session.setAttribute("skeleton_info", vo);
			//String file = vo.getVideo_path();
			//session.setAttribute("skeleton_file", file);
	//	}
	//	return "video_compared";
//	};
	
	// 자세교정코멘트 출력
//	@Async
//	@RequestMapping("/LoadSwing")
//	public void LoadSwing(int deep_seq, String swing_type, HttpSession session, Model model) {
//		
//		
//		tbl_swing vo_swing = mapper.loadswing(deep_seq, swing_type);	
//		if(vo_swing!=null) {
//			session.setAttribute("recent_upload_info", vo_swing);
//			String head_action = vo_swing.getHead_action();
//			String shoulder_action = vo_swing.getShoulder__action();
//			String arm_action = vo_swing.getArm__action();
//			String waist_action = vo_swing.getWaist_action();
//			String core_action = vo_swing.getCore__action();
//			String knee_action = vo_swing.getKnee_action();
//			String foot_action = vo_swing.getFoot_action();
//			String weight_center = vo_swing.getWeight_center();
//			double head_code_x = vo_swing.getHead_code_x();
//			double shoulder_code_x = vo_swing.getShoulder_code_x();
//			double arm_code_x = vo_swing.getArm_code_x();
//			double waist_code_x = vo_swing.getWaist_code_x();
//			double core_code_x = vo_swing.getCore_code_x();
//			double knee_code_x = vo_swing.getKnee_code_x();
//			double foot_code_x = vo_swing.getFoot_code_x();
//			double head_code_y = vo_swing.getHead_code_y();
//			double shoulder_code_y = vo_swing.getShoulder_code_y();
//			double arm_code_y = vo_swing.getArm_code_y();
//			double waist_code_y = vo_swing.getWaist_code_y();
//			double core_code_y = vo_swing.getCore_code_y();
//			double knee_code_y = vo_swing.getKnee_code_y();
//			double foot_code_y = vo_swing.getFoot_code_y();
//			
//			session.setAttribute("head_action", head_action);
//			session.setAttribute("shoulder_action", shoulder_action);
//			session.setAttribute("arm_action", arm_action);
//			session.setAttribute("waist_action", waist_action);
//			session.setAttribute("core_action", core_action);
//			session.setAttribute("knee_action", knee_action);
//			session.setAttribute("foot_action", foot_action);
//			session.setAttribute("weight_center", weight_center);
//			session.setAttribute("head_code_x", head_code_x);
//			session.setAttribute("shoulder_code_x", shoulder_code_x);
//			session.setAttribute("arm_code_x", arm_code_x);
//			session.setAttribute("waist_code_x", waist_code_x);
//			session.setAttribute("core_code_x", core_code_x);
//			session.setAttribute("knee_code_x", knee_code_x);
//			session.setAttribute("foot_code_x", foot_code_x);
//			session.setAttribute("head_code_y", head_code_y);
//			session.setAttribute("shoulder_code_y", shoulder_code_y);
//			session.setAttribute("arm_code_y", arm_code_y);
//			session.setAttribute("waist_code_y", waist_code_y);
//			session.setAttribute("core_code_y", core_code_y);
//			session.setAttribute("knee_code_y", knee_code_y);
//			session.setAttribute("foot_code_y", foot_code_y);
			
//			model.addAttribute("head_action", head_action);
//			model.addAttribute("shoulder_action", shoulder_action);
//			model.addAttribute("arm_action", arm_action);
//			model.addAttribute("waist_action", waist_action);
//			model.addAttribute("core_action", core_action);
//			model.addAttribute("knee_action", knee_action);
//			model.addAttribute("foot_action", foot_action);
//			model.addAttribute("weight_center", weight_center);
//		}
//	};
	
	
	
	
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




