package kr.green.spring.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import kr.green.spring.service.MemberService;
import kr.green.spring.vo.MemberVO;

/**
 * Handles requests for the application home page.
 * 컨트롤러 어노테이션 @Contrller가 붙으면 컨트롤러로 인식
 */

@Controller
public class HomeController {
	 
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	MemberService memberService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model, String id, Integer num1, Integer num2, Integer count){
		logger.info("메인페이지 실행");

		Integer res = 0;
		if(num1 != null && num2 != null)
			res = num1 + num2;
		
		if(count == null) count = 0;
		else count++;
		
		/**
		 * model은 화면과 관련된 정보를 저장하는 객체 
		 * model.addAttribute는 화면에 serverTime이라는 변수를 추가 하는 기능을 가진 메서드 */
		
		model.addAttribute("serverTime", "안녕하세요");
		model.addAttribute("name", id);
		model.addAttribute("a", num1);
		model.addAttribute("b", num2);
		model.addAttribute("c", res);
		model.addAttribute("cnt", count);
		
		return "home";
	
		/** 
		 * 사용자에서 home.jsp를 보내준다
		 * .jsp는 자동으로 붙여진다, appServlet/servlet-context 참조
		 */
	}
		/* signup */
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
		/* signin */
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
		
		
		@RequestMapping(value = "/member/modify", method = RequestMethod.GET)
		public String modifyGet(Model model){
			logger.info("회원수정 페이지 실행중");
			
			return "/member/modify";
		}
		
		@RequestMapping(value = "/member/modify", method = RequestMethod.POST)
		public String modifyPost(MemberVO mVo, String oldPw){
			logger.info("회원수정 페이지 진행중");
			System.out.println(mVo);
			System.out.println(oldPw);
			//입력받은 로그인 id와 pw가 같으면 메인 페이지 호출
			if(memberService.modify(mVo, oldPw)) {
				return "redirect:/";
			}
			return "redirect:/member/modify"; 
		}
		
		/* 아이디 비밀번호 길이 예외처리 script 파일에서
		 * 회원정보수정에서 새비밀번호를 입력하지 않아도 수정되는 기능*/
		
		 
}