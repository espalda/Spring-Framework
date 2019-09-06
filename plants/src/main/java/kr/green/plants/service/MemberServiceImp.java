package kr.green.plants.service;

import java.util.ArrayList;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import kr.green.plants.dao.MemberDAO;
import kr.green.plants.vo.MemberVO;
import kr.green.plants.vo.SellerVO;

@Service
public class MemberServiceImp implements MemberService {
	
	@Autowired
	MemberDAO memberDao;

	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	private JavaMailSender mailSender;

	
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
			if(user == null) return null;	/* 화면에서 넘겨주는 정보와 DB에서 가져오는 정보가 null 이면 return null*/
			if(!passwordEncoder.matches(mvo.getPw(), user.getPw())) {/** rawPassword 와 encodedPassword 비교 */
				return null;						
			}
			return user;
		}

		@Override
		public void updateMember(MemberVO mvo) {
			mvo.setValid("I");
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
		public MemberVO findMemberId(String name, String email) {
			MemberVO mvo = memberDao.findMemberId(name, email);	/** 동일한 내용을 여러개 담을수 있는 ArrayList로 하는게 효율적 */
			if(mvo != null) {
				return mvo; 
				/* equals로 name과 email을 비교하지 않았는데 아이디 가져오는게 가능한 이유 */
			}	/* ajax에서 else로 하면 작동 안되는 이유 error: function()은 작동됨 */
			return null;
		}

		@Override
		public MemberVO findMemberPw(String id, String name, String email) {
			return memberDao.findMemberPw(id, name, email);
		}

		@Override
		public String createPw() {
			String str = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
			String pw = "";
			for(int i=0; i< 8; i++) {
				int r = (int)(Math.random()*62);
				pw += str.charAt(r);
			}
			return pw;
		}

		@Override
		public void modifyPw(String id, String email, String newPw) {
			/** 새로운 인코딩한 비밀번호를 DB에 업데이트 하는 기능 */
			System.out.println("서비스 새 비밀번호 " + newPw);
			MemberVO mvo = memberDao.getMember(id);
			if(mvo == null)	return;
			mvo.setPw(passwordEncoder.encode(newPw));
			System.out.println(mvo);
			memberDao.updateMember(mvo);
		}

		@Override
		public void sendMail(String email, String title, String contents) {
			System.out.println("메일보내기 :"+ email);
			String setfrom = "test";         /** 값 필수 입력 */
		    try {
		        MimeMessage message = mailSender.createMimeMessage();
		        MimeMessageHelper messageHelper 
		            = new MimeMessageHelper(message, true, "UTF-8");
		        
		        messageHelper.setFrom(setfrom);  	/* [보내는사람] 생략 불가 */
		        messageHelper.setTo(email);     	/* [받는사람] email */
		        messageHelper.setSubject(title); 	/* [메일제목] */
		        messageHelper.setText(contents);  	/* [메일내용] */

		        mailSender.send(message);
		    } catch(Exception e){
		        System.out.println(e);
		    }
		}

		/** seller 정보 업데이트*/
		@Override
		public void updateSeller(SellerVO svo) {
			memberDao.updateSeller(svo);
		}

		@Override
		public ArrayList<SellerVO> selectSeller() {
			return memberDao.selectSeller();
		}

		@Override
		public ArrayList<MemberVO> selectMember() {
			return memberDao.selectMember();
		}

	
	

}
