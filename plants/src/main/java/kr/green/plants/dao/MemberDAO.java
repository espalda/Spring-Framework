package kr.green.plants.dao;

import org.apache.ibatis.annotations.Param;

import kr.green.plants.vo.MemberVO;

public interface MemberDAO {

	public void signup(@Param("member") MemberVO mvo);

	public MemberVO getMember(@Param("id") String id);

	public void updateMember(@Param("member") MemberVO mvo);

	public MemberVO findMemberId(@Param("name") String name, @Param("email")String email);

	public MemberVO findMemberPw(@Param("id")String id, @Param("name")String name, @Param("email")String email);

}
