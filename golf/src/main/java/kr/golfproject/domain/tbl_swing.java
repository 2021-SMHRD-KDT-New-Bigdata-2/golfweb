package kr.golfproject.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
// 스윙동작 VO
public class tbl_swing {
	private int reco_seq; 				// 추천 순번
	private int deep_seq;				// 딥러닝 순번
	private String swing_type; 			// 스윙 동작
	private String head_action;			// 머리 동작
	private String shoulder__action;	// 어깨 동작
	private String arm__action;			// 팔 동작
	private String waist_action;		// 허리 동작
	private String core__action;		// 골반 동작
	private String knee_action;			// 무릎 동작
	private String foot_action;			// 발 동작
	private String weight_center;		// 무게 중심
	private String reg_date;			// 등록 일자
}
