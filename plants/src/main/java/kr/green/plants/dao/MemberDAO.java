package kr.green.plants.dao;

import org.apache.ibatis.annotations.Param;

import kr.green.plants.vo.MemberVO;

public interface MemberDAO {

	public void signup(@Param("mvo") MemberVO mvo);

	public MemberVO getMember(@Param("id") String id);

}
