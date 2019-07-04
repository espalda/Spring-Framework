package kr.green.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.spring.dao.MemberDAO;
import kr.green.spring.vo.MemberVO;

@Service
public class MemberServiceImp implements MemberService{

	@Autowired
	MemberDAO memberDao;
	
	@Override
	public boolean signup(MemberVO mVo) {
		if(mVo == null)
			return false;
		// 기존의 해당 아이디가 있으면 false 없으면 회원가입 진행
		mVo.setName("");
		if(memberDao.getMember(mVo.getId()) != null)
			return false;
		memberDao.signup(mVo);
		return true;
	}
	
}
