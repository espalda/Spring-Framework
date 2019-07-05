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
		/* 예외처리 - mVo == null 넘겨받는 값이 null이면 실행되서는 안됨 */
		if(mVo == null)
			return false;
		
		mVo.setName("");
		/* getMember 넘겨받은 정보가 DB값과 일치하는지 확인하는 메서드
		 * 기존의 해당 아이디가 있으면 false 없으면 회원가입 진행 */
		if(memberDao.getMember(mVo.getId()) != null)
			return false;
		memberDao.signup(mVo);
		return true;
	}

	@Override
	public boolean signin(MemberVO mVo) {
		if(mVo == null)
			return false;
		/* 컨트롤러 mVo 내가 입력한 회원정보
		 * db에서 가져온 입력한 id와 일치하는 회원정보 */
		mVo.setName("");
		mVo.setGender("");
		mVo.setEmail("");
		MemberVO oVo =	memberDao.getMember(mVo.getId());
		//oVo == null 입력받은 id와 db정보가 일치하지 않다.
		if(oVo == null)
			return false;
		if(oVo.getPw().equals(mVo.getPw()))
			return true;
		return false;
	}

	@Override
	public boolean modify(MemberVO mVo, String oldPw) {
		if(mVo == null)
			return false;
		/* 입력받은 비밀번호 oldPw 와 db에 있는 비밀번호가 같은지 확인
		 * 같으면 회원정보수정을 위해 Dao에게 수정될 회원 정보 전달하여 DB에 회원테이블 업데이트 요청 
		 */
		MemberVO oVo =	memberDao.getMember(mVo.getId());
		if(oldPw.equals(oVo.getPw())) {
			memberDao.modify(mVo);
			return true;
		}
		return false;
		
	}
	
}
