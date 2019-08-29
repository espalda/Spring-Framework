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
			mvo.setPw(passwordEncoder.encode(mvo.getPw()));	/** 비밀번호 인코딩 */
			memberDao.signup(mvo);
			return true;
		}
		
		
		@Override
		public MemberVO signin(MemberVO mvo) {
			if(mvo == null) return null;
			MemberVO user = memberDao.getMember(mvo.getId());
			System.out.println("회원수정 서비스: " + user);
			
			if(user == null) {
				return null;
			}
			if(passwordEncoder.matches(mvo.getPw(), user.getPw())) {/** rawPassword 와 encodedPassword 비교 */
				return user;										
			}
			return null;
		}

		@Override
		public void updateMember(MemberVO mvo) {
			System.out.println("회원정보 수정 : "+ mvo);
			mvo.setPw(passwordEncoder.encode(mvo.getPw()));	/** 비밀번호 인코딩  */
			memberDao.updateMember(mvo);
			
		}

		@Override
		public void deleteMember(String id) {
			MemberVO user = memberDao.getMember(id);
			if(user == null) return;
			user.setValid("D");
			memberDao.updateMember(user);
			
		}

		@Override
		public String getVal(String str) {
			String [] arr = str.split("=");
			if(arr.length == 2) {
				return arr[1];
			}
			else
				return "";
		}

		@Override
		public String findMemberId(String name, String email) {
			MemberVO mvo = memberDao.findMemberId(name, email);	/** 동일한 내용을 여러개 담을수 있는 ArrayList로 하는게 효율적 */
			if(mvo.getId() != null && mvo.getName().equals(name) && mvo.getEmail().equals(email)) {
				return mvo.getId();
			}
			System.out.println("서비스아이디 찾기 : " + mvo.getId());
			return null;
		}

	
	

}
