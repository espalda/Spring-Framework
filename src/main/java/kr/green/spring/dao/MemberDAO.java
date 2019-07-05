package kr.green.spring.dao;

import kr.green.spring.vo.MemberVO;

/**
 * 인터페이스는 객체를 생성할수 있다.
 * 인터페이스는 인터페이스로 객체를 생성할수 없다
 * MemberService ms = new MemberService - 불가능
 * MemberService ms = new MemberServiceImp - 가능	*/
public interface MemberDAO {

	//매개변수 id (id를 입력받으면) 리턴타입 (memberVO - 데이터베이스의 id에 맞는 회원정보 전체를 가져오겠다)
	MemberVO getMember(String id);
	
	//회원정보 전체를 입력해주면 리턴타입 끝
	void signup(MemberVO mVo);
	
	void modify(MemberVO mVo);
	
	
}

 