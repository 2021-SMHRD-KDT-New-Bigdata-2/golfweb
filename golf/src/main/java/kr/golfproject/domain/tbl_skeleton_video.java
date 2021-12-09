package kr.golfproject.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
// 스켈레톤 비디오 VO
public class tbl_skeleton_video {
	private int video_seq; 			// 스켈 비디오 순번
	private String video_path; 		// 비디오 경로
	private String reg_date;		// 등록 일자
	private int m_idx;				// 등록자 아이디
	private int upload_seq;			// 업로드 순번
}
