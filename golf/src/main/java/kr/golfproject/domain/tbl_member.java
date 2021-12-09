package kr.golfproject.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
// 회원관리 VO
public class tbl_member {
	private int m_idx; 				// 회원 인덱스
	private String m_pwd; 			// 회원 비밀번호
	private String m_name;			// 회원 이름
	private String m_phone;			// 회원 연락처
	private String m_id;			// 회원 아이디
	private String m_gender;		// 회원 성별
	private String m_birthdate;		// 회원 생년월일
	private String m_joindate;		// 회원 가입일자
	private int iron_distance;		// 아이언 비거리
	private int driver_distance;	// 드라이버 비거리
	private int m_score;			// 스코어
	private String admin_yn;		// 관리자 여부

}
