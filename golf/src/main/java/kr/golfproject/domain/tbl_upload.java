package kr.golfproject.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
//업로드 영상 VO
public class tbl_upload {
	private int upload_seq; 		// 업로드 순번
	private String upload_subject; 	// 업로드 제목
	private String upload_date;		// 업로드 날짜
	private String upload_file;		// 업로드 파일
	private int	m_idx;				// 등록자 아이디(member테이블의 순번과 연결)
	private String club_type;		// 아이언/드라이버구분(D or I)
	private String upload_path;
}
