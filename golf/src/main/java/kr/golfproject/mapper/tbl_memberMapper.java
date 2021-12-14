package kr.golfproject.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import kr.golfproject.domain.tbl_deeplearning;
import kr.golfproject.domain.tbl_member;
import kr.golfproject.domain.tbl_swing;
import kr.golfproject.domain.tbl_upload;

@Mapper
public interface tbl_memberMapper {
	public void tbl_member_Join(tbl_member vo); // 회원가입 : insert SQL
	public String member_submit_ID(String m_id);	// 아이디 제출
	public tbl_member Login(tbl_member vo_forLogin); // 로그인/로그인 상태/회원정보 보여주기 : select * ~ where id, pwd = ~ SQL
	// 회원정보 수정 : update SQL
	@Insert("insert into tbl_upload(upload_subject,upload_file,m_idx,club_type,upload_path) values(#{upload_subject},#{upload_file},#{m_idx},#{club_type},#{upload_path})")
	public void uploaddata (tbl_upload vo);
	public tbl_upload IRU(int m_idx);	// tbl_upload vo와 데이터 세션에 저장
	public tbl_swing loadswing(int deep_seq);	// 해당 딥러닝결과의 스윙교정텍스트 출력
	public tbl_deeplearning loaddeep(int upload_seq);	// 딥러닝결과 출력
}