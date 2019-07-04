package kr.green.spring.dao;

import kr.green.spring.vo.MemberVO;

/**
 * 인터페이스는 객체를 생성할수 있다.
 * 인터페이스는 인터페이스로 객체를 생성할수 없다
 * MemberService ms = new MemberService - 불가능
 * MemberService ms = new MemberServiceImp - 가능	*/
public interface MemberDAO {

	MemberVO getMember(String id);

	void signup(MemberVO mVo);
	
}

