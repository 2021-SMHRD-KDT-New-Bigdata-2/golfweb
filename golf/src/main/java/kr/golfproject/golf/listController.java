package kr.golfproject.golf;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import kr.golfproject.domain.tbl_skeleton_video;
import kr.golfproject.domain.tbl_upload;
import kr.golfproject.mapper.tbl_memberMapper;

@RestController
public class listController {
	
	@Autowired
	tbl_memberMapper mapper;
	
	@RequestMapping("/graphlist")
	public List<tbl_skeleton_video> graphlist(int m_idx, int upload_seq, HttpSession session) {
		String login_state = (String)session.getAttribute("login_state");
		tbl_upload vo = new tbl_upload();
		List<tbl_skeleton_video> skeleton=null;
		if(login_state=="Y") {
			vo.setM_idx(m_idx);
			vo.setUpload_seq(upload_seq);
			
			skeleton = mapper.skeletonlist(vo);
			System.out.println("리스트목록: "+skeleton);
			//System.out.println(list);
			return skeleton;
		}
		return skeleton;
		
	}
	

	
}
