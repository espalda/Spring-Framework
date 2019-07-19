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

@Controller
@RequestMapping(value="/member")
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	MemberService memberService;
		
	
		
		
		
		/** 회원정보 수정 */
		@RequestMapping(value = "/modify", method = RequestMethod.GET)
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
