package kr.green.test.service;

import javax.servlet.http.HttpServletRequest;

import kr.green.test.vo.MemberVO;

//서비스에서는 annotation 필요 없음
public interface MemberService {

	public MemberVO signin(String id, String pw);

	public void signup(MemberVO mVo);

	public boolean isMember(String id);

	public String getVal(String id);

	public boolean isMember(String id, String email);

	public void sendEmail(String title, String contents, String email);

	public MemberVO modify(MemberVO user, String oldPw);

	public void modify(String id, String newPw);

	public boolean updateUserToSession(HttpServletRequest r, MemberVO nUser);
	
}