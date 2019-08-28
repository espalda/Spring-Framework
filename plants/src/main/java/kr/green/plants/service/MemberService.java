package kr.green.plants.service;

import kr.green.plants.vo.MemberVO;

public interface MemberService {

	public boolean signup(MemberVO mvo);

	public MemberVO signin(MemberVO mvo);
	
	public MemberVO getMember(String id);

	public void updateMember(MemberVO mvo);
}
