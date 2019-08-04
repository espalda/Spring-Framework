package kr.green.test.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.green.test.service.MemberService;
import kr.green.test.vo.MemberVO;

@Controller
public class HomeController {
	 
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	MemberService memberService;

	
		/** 메인화면 */
		@RequestMapping(value = "/", method = RequestMethod.GET)
		public String homeGet(Model model, String id, HttpServletRequest request){
			logger.info("메인화면");
			return "home";
		}
		
		
		/** 메인 로그인 */
		@RequestMapping(value = "/", method = RequestMethod.POST)
		public String homePost(Model model, String id, String pw) {
			logger.info("로그인");
			MemberVO user = memberService.signin(id,pw); 
			if( user != null) {
				logger.info("로그인 성공");
				logger.info(user.toString());
				model.addAttribute("user", user);
			}else {
				logger.info("로그인 실패");
			}
			return "redirect:/";
		}
		
		
		/** 회원가입 */
		@RequestMapping(value="/signup", method=RequestMethod.GET)
		public String signupGet(Model model) {
			logger.info("회원가입 화면");
			return "signup";
		}
		
		@RequestMapping(value="/signup", method=RequestMethod.POST)
		public String signupPost(Model model, MemberVO mVo) {
			logger.info("회원가입 진행");
			memberService.signup(mVo);
			return "redirect:/";
		}
		
		
		/** 로그인 */
		@RequestMapping(value = "/signin", method = RequestMethod.GET)
		public String signinGet(Model model){
			logger.info("로그인 화면");
			return "signin";
		}
		
		@RequestMapping(value = "/signin", method = RequestMethod.POST)
		public String signinPost(Model model, String id, String pw){
			logger.info("로그인 진행 중");
			MemberVO user = memberService.signin(id,pw); 
			if( user != null) {
				logger.info("로그인 성공");
				logger.info(user.toString());
				model.addAttribute("user", user);
			}else {
				logger.info("로그인 실패");
			}
			return "redirect:/";
		}
		
		
		/** 회원수정 */
		@RequestMapping(value = "/member/modify", method =RequestMethod.GET)
		public String modifyGet(Model model, Boolean success) {	//대문자 Boolean 은 널값까지 처리할수있는 true/false
			model.addAttribute("success", success);
			return "member/modify";
		}
		
		@RequestMapping(value = "/member/modify", method =RequestMethod.POST)
		public String modifyPost(Model model, MemberVO user, String oldPw, HttpServletRequest r) {
			MemberVO nUser = memberService.modify(user, oldPw);
			boolean t = memberService.updateUserToSession(r,nUser);
			model.addAttribute("success", t);
			return "redirect:/";
		}
		
		
		/** 로그아웃 */
		@RequestMapping(value = "/signout", method=RequestMethod.GET)
		public String signOutGet(HttpServletRequest req) {
			req.getSession().removeAttribute("user");
			logger.info("로그아웃 성공");
			return "redirect:/";
		}
		
		
		/** 아이디 중복 검사 */
		@RequestMapping(value="/dup")
		@ResponseBody
		public Map<Object, Object> idcheck(@RequestBody String id){
		 
		   Map<Object, Object> map = new HashMap<Object, Object>();
		   boolean isMember = memberService.isMember(id);
		   map.put("isMember",isMember);
		   return map;
		}
		
		
		/** 비밀번호 찾기 */
		@RequestMapping(value="/password/find", method=RequestMethod.GET)
		public String passwordFindGet() {
			logger.info("비밀번호 찾기 페이지");
			return "member/find";
		}
		
		
		/** 이메일 체크 */
		@RequestMapping(value="/checkemail")
		@ResponseBody
		public Map<Object, Object> emailcheck(@RequestBody String str){
		 
		   Map<Object, Object> map = new HashMap<Object, Object>();
		   try {
			str = URLDecoder.decode(str,"UTF-8");	//디코딩 과정, try & catch 확인
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		   String [] tmpStr = str.split("&");	//id와 이메일이 붙어있는것을 분리해서 출력하게 해줌
		   //String id = tmpStr[0];
		   //String email = tmpStr[1];
		   String id = memberService.getVal(tmpStr[0]);
		   String email = memberService.getVal(tmpStr[1]);
		   
		   //System.out.println(str);
		   //System.out.println(id);
		   //System.out.println(email);
		   //id = memberService.getVal(id);
		   boolean isMember = memberService.isMember(id,email);
		   map.put("isMember", isMember);
		   return map;
		}
		
		
		/** 비밀번호 보내기 */
		@RequestMapping(value="/password/send", method=RequestMethod.POST)
		public String passwordSendPost(String id, String email) {
			logger.info("비밀번호 생성하여 메일 보내기");
			String str = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
			String newPw = "";
			while(newPw.length() < 8) {
				int index = (int) (Math.random()*str.length());
				newPw += str.charAt(index);	//내가 원하는 문자열에서 하나의 문자를 꺼내는 역할
			}
			String title = "변경된 비밀번호 입니다";
			String contents = "새 비밀번호 입니다.\n"+newPw;
			
			memberService.sendEmail(title,contents,email);
			memberService.modify(id,newPw);
			return "redirect:/";
		}	
}