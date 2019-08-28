package kr.green.plants.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import kr.green.plants.dao.MemberDAO;
import kr.green.plants.vo.MemberVO;

@Service
public class MemberServiceImp implements MemberService {
	
	@Autowired
	MemberDAO memberDao;

	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
		@Override
		public MemberVO getMember(String id) {
			return memberDao.getMember(id);	/** 화면에서 입력받은 정보중 아이디를 통해서 회원 정보 전체를 가져오겠다 */
		}
	
		@Override
		public boolean signup(MemberVO mvo) {
			if(mvo == null) return false;
			mvo.setPw(passwordEncoder.encode(mvo.getPw()));		/** 비밀번호 인코딩 */
			memberDao.signup(mvo);
			return true;
		}
	
		@Override
		public MemberVO signin(MemberVO mvo) {
			if(mvo == null) return null;
			MemberVO user = memberDao.getMember(mvo.getId());
			if(passwordEncoder.matches(mvo.getPw(), user.getPw())) return user;		/** rawPassword 와 encodedPassword 비교 */
			System.out.println("MemberVO :" + user);
			return null;
		}

		@Override
		public void updateMember(MemberVO mvo) {
			memberDao.updateMember(mvo);
			
		}
	

}
