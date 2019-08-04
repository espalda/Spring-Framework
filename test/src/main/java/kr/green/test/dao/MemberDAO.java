package kr.green.test.dao;

import kr.green.test.vo.MemberVO;

public interface MemberDAO {


	public MemberVO getMember(String id);

	public void signupDB(MemberVO mVo);

	public void modify(MemberVO mVo);



	
	
}

