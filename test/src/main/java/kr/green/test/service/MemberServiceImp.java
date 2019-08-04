package kr.green.test.service;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import kr.green.test.dao.MemberDAO;
import kr.green.test.vo.MemberVO;

@Service
public class MemberServiceImp implements MemberService{

	@Autowired
	MemberDAO memberDao;
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	private JavaMailSender mailSender;
		
		/** 회원가입 기능 */
		@Override
		public void signup(MemberVO mVo) {
			if(mVo == null)	return;
			
			//회원가입창에서 입력한 비밀번호를 암호화 하여 DB에 저장하는 기능!
			
			String encodePw = passwordEncoder.encode(mVo.getPw());
			//스트링의 객체 encodePw에 입력받은 비밀번호를 암호화 해서 해당 클래스의 메서드를 호출해서 저장
			mVo.setPw(encodePw);	//VO의 pw에 비밀번호 인코딩기능을 설정한다
			memberDao.signupDB(mVo);
			return;
			
			}
	
		/** 로그인 기능 */
		@Override
		public MemberVO signin(String id, String pw) {
			MemberVO user = memberDao.getMember(id);
			//데이터데이스에서 id와 일치하는 값이 없을때 발생하는 nullpointexception 예외처리를 해주지 않아서 오류가 발생
			System.out.println(user);
			if(user != null && passwordEncoder.matches(pw, user.getPw())) {
				return user;
			}
			return null;
		}

		@Override
		public boolean isMember(String id) {
			if(memberDao.getMember(id) == null)
				return false;
			return true;
		}

		@Override
		public String getVal(String str) {
			String [] tmpStr = str.split("=");	//=을 기준으로 배열을 나눈다
			//id=123=123 배열의 길이가 3개
			//id&123 배열의 길이가 1개
			if(tmpStr.length != 2)
				return null;
			//id=123에서 123을 원하는데 id는 0번지에 123은 1번지에 저장되기 때문에 1번지의 값을 리턴
			return tmpStr[1];
		}

		@Override
		public boolean isMember(String id, String email) {
			MemberVO user = memberDao.getMember(id);
			if(user != null && user.getEmail().equals(email))
				return true;
			return false;
		}

		@Override
		public void sendEmail(String title, String contents, String email) {
			try {
			    MimeMessage message = mailSender.createMimeMessage();
			    MimeMessageHelper messageHelper 
			        = new MimeMessageHelper(message, true, "UTF-8");
			    String setfrom = "aaa";	//빈문자열 불가, 생략불가
			    messageHelper.setFrom(setfrom);  // 보내는사람 생략하거나 하면 정상작동을 안함
			    messageHelper.setTo(email);     // 받는사람 이메일
			    messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
			    messageHelper.setText(contents);  // 메일 내용
			
			    mailSender.send(message);
			}catch(Exception e){
			    System.out.println(e);
			}
		}

		
		@Override
		public void modify(String id, String newPw) {
			MemberVO user = memberDao.getMember(id);
			if(user == null) return;
			String encPw = passwordEncoder.encode(newPw);
			user.setPw(encPw);
			memberDao.modify(user);
		}

		
		/** 회원정보 수정 */
		@Override
		public MemberVO modify(MemberVO user, String oldPw) {
			if(user == null) return null;
			MemberVO oUser = memberDao.getMember(user.getId());
			if(!passwordEncoder.matches(oldPw, oUser.getPw())) {	//기존비밀번호와 DB에 저장된 비밀번호 같은지 확인
				return null;
			}
			if(user.getPw().length() == 0) {	//새비밀번호가 입력되지 않은 경우 기존 비밀번호 정보를 가져와 새 비밀번호로 설정
				user.setPw(oUser.getPw());
			}
			else{
				String encPw = passwordEncoder.encode(user.getPw());	//새비밀번호가 입력된 경우 DB에 저장하기 전에 암호화
				user.setPw(encPw);
			}
			memberDao.modify(user);
			return user;
		}

		
		@Override
		public boolean updateUserToSession(HttpServletRequest r, MemberVO nUser) {
			if(nUser == null) return false;
			HttpSession s = r.getSession();
			s.removeAttribute("user");
			s.setAttribute("user", nUser);
			return false;
		}
}