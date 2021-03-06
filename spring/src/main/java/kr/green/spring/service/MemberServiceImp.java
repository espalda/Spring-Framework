package kr.green.spring.service;

import java.util.ArrayList;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import kr.green.spring.dao.MemberDAO;
import kr.green.spring.pagination.Criteria;
import kr.green.spring.vo.MemberVO;

@Service
public class MemberServiceImp implements MemberService{

	@Autowired
	MemberDAO memberDao;
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	private JavaMailSender mailSender;
	
		@Override
		public boolean signup(MemberVO mVo) {
			if(mVo == null)	//예외처리 - mVo == null 넘겨받는 값이 null이면 실행되서는 안됨
				return false;
			//getMember 넘겨받은 정보가 DB값과 일치하는지 확인하는 메서드, 기존의 해당 아이디가 있으면 false 없으면 회원가입 진행
			if(memberDao.getMember(mVo.getId()) != null)
				return false;
			//회원가입창에서 입력받은 암호를 암호화 시키고 회원 정보의 비밀번호를 암호화된 비밀번호로 변경
			String encode = passwordEncoder.encode(mVo.getPw());
			mVo.setPw(encode);
			memberDao.signup(mVo);
			return true;
		}
	
		@Override
		public MemberVO signin(MemberVO mVo) {	//컨트롤러 mVo 내가 입력한 회원정보
			if(mVo == null)
				return null;
			MemberVO oVo =	memberDao.getMember(mVo.getId());	//id를 통해 db에서 가져온 정보를 ovo에 저장
			if(oVo == null)		//oVo == null 입력받은 id와 db정보가 일치하지 않다.
				return null;
			if(passwordEncoder.matches(mVo.getPw(), oVo.getPw()))
				return oVo;
			return null;
		}
	
		@Override
		public boolean modify(MemberVO mVo, String oldPw) {
			if(mVo == null)
				return false;
			//입력받은 비밀번호 oldPw 와 db에 있는 비밀번호가 같은지 확인, 같으면 회원정보수정을 위해 Dao에게 수정될 회원 정보 전달하여 DB에 회원테이블 업데이트 요청 
			MemberVO oVo =	memberDao.getMember(mVo.getId());
			if(oldPw.equals(oVo.getPw())){
				memberDao.modify(mVo);
				return true;
			}
			return false;
		}

		
		@Override
		public boolean isMember(String id) {
			if(memberDao.getMember(id) == null) {
				return false;
			}
			return true;
		}

		@Override
		public String getVal(String id) {
			String [] arr = id.split("=");
			if(arr.length == 2)
				return arr[1];
			else
				return "";
		}

		@Override
		public boolean checkMember(String id, String email) {
			MemberVO user = memberDao.getMember(id);
			if(user != null && user.getEmail().equals(email)) {
				return true;
			}
			return false;
		}

		@Override
		public String createPw() {
			String str ="0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
			String pw="";
			for(int i=0; i< 8; i++) {
				int r = (int)(Math.random()*62);
				pw += str.charAt(r);
			}
			return pw;
		}

		@Override
		public void modify(String id, String email, String newPw) {
			MemberVO user = memberDao.getMember(id);
			if(user == null)	return;
			if(!user.getEmail().equals(email))	return;
			String encodePw = passwordEncoder.encode(newPw);
			user.setPw(encodePw);
			memberDao.modify(user);
		}

		@Override
		public void sendMail(String email, String title, String contents) {
			String setfrom = "stajun@google.com";         
		    try {
		        MimeMessage message = mailSender.createMimeMessage();
		        MimeMessageHelper messageHelper 
		            = new MimeMessageHelper(message, true, "UTF-8");
		        
		        messageHelper.setFrom(setfrom);  // 보내는사람 생략하거나 하면 정상작동을 안함
		        messageHelper.setTo(email);     // 받는사람 이메일
		        messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
		        messageHelper.setText(contents);  // 메일 내용

		        mailSender.send(message);
		    } catch(Exception e){
		        System.out.println(e);
		    }
		}

		@Override
		public ArrayList<MemberVO> getAllMember(Criteria cri) {
			return memberDao.getAllMember(cri);
		}

		@Override
		public int getTotalCount(Criteria cri) {
			return memberDao.getTotalCount(cri);
		}

		@Override
		public void updateAuthority(MemberVO mVo) {
			memberDao.updateAuthority(mVo);
		}
}