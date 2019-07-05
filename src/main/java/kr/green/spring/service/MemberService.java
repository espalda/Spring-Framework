package kr.green.spring.service;

import kr.green.spring.vo.MemberVO;

public interface MemberService {
	public boolean signup(MemberVO mVo);
	public boolean signin(MemberVO mVo);
	/* 회원이면 true 비회원이면 false를 반환하는 기능을 하는 메서드를 정의하는 인터페이스
	 * 구현은 MemeberServiceImp 에서 @overried로 구현
	 * 매개변수 mVo는 컨트롤러에서 넘겨받은 매개변수와 동일하다 */
	public boolean modify(MemberVO mVo, String oldPW);
}

/**
 * 아이디와 비밀번호를 입력후 로그인 버튼을 클릭하면
 * 데이터 베이스에 있는 회원 테이블에 아이디와 일치하는 정보가 있는지 검색하고
 * 일치하는 정보가 없으면 로그인 실패 처리
 * 있으면 해당 정보를 가져와서 비밀번호 비교 후 일치하면 로그인 성공 처리
 * 일치하지 않으면 로그인 실패 처리

 * 1) 로그인 버튼을 클릭하면 입력한 정보를 컨트롤러에게 post 방식으로 전달(pw 개인정보가 있으므로) jsp
 * 	sysout으로 정보가 잘 넘어왔는지 확인
 * 2) 컨트롤러에서 서비스에게 회원 여부를 확인하여 회원이 맞으면 /main 페이지로 아니면 signin 페이지로 이동
 * 3) DAO 에게 id와 일치하는 회원 정보를 가져오게 시켜서 저장한 후, 저장된 회원 정보가 없으면 = null이면
 	컨트롤러에게 회원이 아닙니다 라고 알려주기
 	있으면 가져온 회원정보 비밀번호와 입력한 회원정보 비밀번호를 비교하여 컨트롤러에게 회원이라고 알려주고 다르면 아니라고 알려준다.
 * 4)
 * 5)
 */