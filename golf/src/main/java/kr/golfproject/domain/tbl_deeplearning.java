package kr.golfproject.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
// 딥러닝 분석 VO
public class tbl_deeplearning {
	private int deep_seq; 			// 딥러닝 순번
	private int upload_seq;			// 업로드 순번
	private String deep_target; 	// 분석 목적
	private String address;			// 어드레스
	private String backswing;		// 백스윙
	private String top;				// 탑
	private String downswing;		// 다운스윙
	private String acceleration;	// 가속
	private String impact;			// 임팩트
	private String followthrough;	// 팔로우스루
	private String finish;			// 피니쉬
	private String reg_date;		// 등록일자
	private String m_id;			// 등록자 아이디
	
}
