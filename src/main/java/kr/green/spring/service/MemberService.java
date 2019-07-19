package kr.green.spring.service;

import kr.green.spring.vo.MemberVO;

public interface MemberService {
	
	public boolean signup(MemberVO mVo);
	
	public MemberVO signin(MemberVO mVo);
	
	public boolean modify(MemberVO mVo, String oldPW);

	public boolean getMember(String id);

	public String getVal(String id);

	public boolean checkMember(String id, String email);

	public String createPw();

	public void modify(String id, String email, String newPw);

	public void sendMail(String email, String title, String contents);
	
	//리턴타입이 boolean인 인터페이스 기능명세는 회원이면 true 비회원이면 false를 반환하는 기능을 하는 메서드를 정의
	//구현은 MemeberServiceImp 에서 @overried로 구현, 매개변수 mVo는 컨트롤러가 화면에서 넘겨받은 매개변수와 동일하다
}