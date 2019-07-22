package kr.green.spring.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.green.spring.service.MemberService;
import kr.green.spring.vo.MemberVO;

@Controller
public class HomeController {
	 
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	private JavaMailSender mailSender;
	
	
		/** 메인화면 */
		@RequestMapping(value = "/", method = RequestMethod.GET)
		public String home(Model model){
			return "home";
			//jsp는 자동으로 붙여진다, appServlet/servlet-context 참조
		}
		
		
		/** 회원가입 */
		@RequestMapping(value = "/signup", method = RequestMethod.GET)
		public String signupGet(Model model){
			logger.info("회원가입 실행");
			return "signup";
	}
		@RequestMapping(value = "/signup", method = RequestMethod.POST)
		public String signupPost(MemberVO mVo){
			logger.info("회원가입 진행 중");
			if(memberService.signup(mVo))
				return "redirect:/";
			else
				return "redirect:/signup"; 
	}
		
		
		/** 로그인 */
		@RequestMapping(value = "/signin", method = RequestMethod.GET)
		public String signinGet(Model model){
			logger.info("로그인 페이지 실행중");
			return "signin";
		}
		
		@RequestMapping(value = "/signin", method = RequestMethod.POST)
		public String signinPost(Model model, MemberVO mVo){
			logger.info("로그인 페이지 진행중");
			System.out.println(mVo);
			MemberVO user = memberService.signin(mVo);
			//입력받은 로그인 id와 pw가 같으면 메인 페이지 호출
			//if(memberService.signin(mVo)) {
			if(user != null) {	
			model.addAttribute("user", user);
				return "redirect:/";
			}
			return "redirect:/signin"; 
	}
		
		
		
		/** 로그아웃 */
		@RequestMapping(value="/signout")
		public String signout(HttpServletRequest request) {
			HttpSession session = request.getSession();
			session.removeAttribute("user");
			return "redirect:/";
		}
		
		
		@RequestMapping(value ="/dup")
		@ResponseBody
		public Map<Object, Object> idcheck(@RequestBody String id){

		    Map<Object, Object> map = new HashMap<Object, Object>();
		    //변수 id에 저장된 아이디가 회원 아이디인지 아닌지 확인하여 isMember변수에 
		    //담아 보낸다.
		    boolean isMember = memberService.isMember(id);
		    map.put("isMember", isMember);
		    return map;
		}
		
		@RequestMapping(value = "/mail/mailForm")
		public String mailForm() {

		    return "mail";
		}  

		// mailSending 코드
		@RequestMapping(value = "/mail/mailSending")
		public String mailSending(HttpServletRequest request) {

		    String setfrom = "stajun@naver.com";         
		    String tomail  = request.getParameter("tomail");     // 받는 사람 이메일
		    String title   = request.getParameter("title");      // 제목
		    String contents = request.getParameter("content");    // 내용
		    
		    memberService.sendMail(tomail, title, contents);

		    return "redirect:/mail/mailForm";
		}
		@RequestMapping(value = "/password/find")
		public String passwordFind() {

		    return "member/find";
		} 
		
		@RequestMapping(value ="/checkemail")
		@ResponseBody
		public Map<Object, Object> emailcheck(
				@RequestBody String str){
		    Map<Object, Object> map = new HashMap<Object, Object>();
		    
		    String [] arr = str.split("&");
		    String id = arr[0];
		    String email="";
		    try {
				email=URLDecoder.decode(arr[1], "UTF-8");
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		    id = memberService.getVal(id);
		    email = memberService.getVal(email);
		    
		    boolean isOk = memberService.checkMember(id,email);
		    map.put("isOk",isOk);
		    return map;
		}
		
		
		@RequestMapping(value = "/password/send")
		public String passwordSend(String id,String email) {
			//비밀번호 생성
			String newPw = memberService.createPw();
			//생성된 비밀번호 디비에 저장
			memberService.modify(id,email,newPw);
			//이메일 발송
			String title = "변경된 비밀번호입니다.";
			String contents = "변경된 비밀번호입니다.\n"+newPw+"\n";
			memberService.sendMail(email,title,contents);
		    return "send";
		}  
		
}