package kr.golfproject.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.golfproject.domain.tbl_member;

@Mapper
public interface tbl_memberMapper {
	public void tbl_member_Join(tbl_member vo); // 회원가입 : insert SQL
	public tbl_member Login(); // 로그인/로그인 상태/회원정보 보여주기 : select * ~ where id, pwd = ~ SQL
	// 회원정보 수정 : update SQL
}