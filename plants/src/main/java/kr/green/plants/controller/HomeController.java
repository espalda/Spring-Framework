package kr.green.plants.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.green.plants.service.BoardService;
import kr.green.plants.service.MemberService;
import kr.green.plants.vo.MemberVO;

@Controller
public class HomeController {
	
	@Autowired
	MemberService memberService;
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
		
		/** 메인 홈 화면 */
		@RequestMapping(value="/")
		public ModelAndView main(ModelAndView mv){
		    mv.setViewName("/main/home");
		    return mv;
		}
		
		/** 회원 가입 */
		@RequestMapping(value="/signup", method= RequestMethod.GET)
		public ModelAndView signupGet(ModelAndView mv){
		    mv.setViewName("/sign/signup");
		    return mv;
		}
		@RequestMapping(value="/signup", method= RequestMethod.POST)
		public String signupPost(Model model, MemberVO mvo){
			if(!memberService.signup(mvo)) return null;
		    return "redirect:/";
		}
		/** ajax 아이디 중복 검사 */
		@RequestMapping(value ="/checkId")
		@ResponseBody
		public boolean idCheck(@RequestBody String id){
			if(memberService.getMember(id) != null) return true;
		    return false;
		}
		
		/** 로그인 */
		@RequestMapping(value="/signin", method=RequestMethod.GET)
		public ModelAndView signinGet(ModelAndView mv){
		    mv.setViewName("/sign/signin");
		    return mv;
		}
		/* 비밀번호가 다를때 예외처리 */
		/* 입력한 id와 DB에 id가 같지 않으면 return */
		/* 화면에서 넘어오는 정보가 없으면 return */
		@RequestMapping(value="/signin", method=RequestMethod.POST)
		public String signinPost(Model model, MemberVO mvo){
			MemberVO user = memberService.signin(mvo);	
			if(user == null) {
				return "redirect:/signin";
			}
			model.addAttribute("login", user);	/** 유저정보가 null이 아니면 session에 user 정보를 넣고 메인 화면으로 이동 */
			logger.info("로그인 성공");
			return "redirect:/";
			
		}
		
		/** 로그아웃 */
		@RequestMapping(value="/signout", method=RequestMethod.GET)
		public String signoutGet(HttpServletRequest r){
			r.getSession().removeAttribute("login");
		    return "redirect:/";
		}
		
		
		/** 아이디 찾기 */
		@RequestMapping(value="/idFind")
		public ModelAndView memberIdFind(ModelAndView mv){
		    mv.setViewName("/sign/idFind");
		    return mv;
		}
		/** ajax 아이디 찾기 */
		@RequestMapping(value ="/findId")
		@ResponseBody
		public Map<Object, Object> idFind(@RequestBody String str){
		    Map<Object, Object> map = new HashMap<Object, Object>();
		    String [] arr = str.split("&");
		    String name = arr[0];
		    String email = arr[1];
		    try {
				name = URLDecoder.decode(arr[0], "UTF-8");
				email = URLDecoder.decode(arr[1], "UTF-8");
			} catch (UnsupportedEncodingException e) {
				/** 한글 name, 이메일 특문 decode */
				e.printStackTrace();
			}
		    name = memberService.getVal(name);
		    email = memberService.getVal(email);
		    MemberVO find = memberService.findMemberId(name,email);
		    map.put("idFind", find.getId());
		    return map;
		}
		
		
		/** 비밀번호 찾기 */
		@RequestMapping(value="/pwFind")
		public ModelAndView memberPwFind(ModelAndView mv){
		    mv.setViewName("/sign/pwFind");
		    return mv;
		}
		/** ajax 비밀번호 찾기 */
		@RequestMapping(value ="/findPw")
		@ResponseBody
		public Map<Object, Object> pwFind(@RequestBody String str){
		    Map<Object, Object> map = new HashMap<Object, Object>();
		    /* 매개변수를 MemberVO로 설정해서 id 찾기와 pw 찾기를 하나의 서비스로 구현하는 방법 - 미구현 */
		    String [] arr = str.split("&");
		    String id = arr[0];
		    String name = arr[1];
		    String email = arr[2];
		    try {
				name = URLDecoder.decode(arr[1], "UTF-8");
				email = URLDecoder.decode(arr[2], "UTF-8");
			} catch (UnsupportedEncodingException e) {
				/** 한글 name, 이메일 특문 decode */
				e.printStackTrace();
			}
			id= memberService.getVal(id);
			name=memberService.getVal(name);
			email=memberService.getVal(email);
			
			MemberVO find = memberService.findMemberPw(id,name,email);
			if(find == null) {
				map.put("pwFind", "");
			}else {
				map.put("pwFind", find.getEmail());
				String newPw = memberService.createPw();
				
				/* 새로운 임시 비밀번호를 DB에 저장 */
				memberService.modifyPw(find.getId(),find.getEmail(),newPw);
				/* 이메일 발송 */
				String title = "* " + id + "님의 변경된 비밀번호입니다 *";
				String contents = "변경된 비밀번호는 \n" + newPw + "\n 입니다.";
				memberService.sendMail(find.getEmail(),title,contents);
			}
		    return map;
		}
		/** 임시비밀번호 발급 */
		@RequestMapping(value = "/password/send")
		public String passwordSend(String id,String email) {
			/* 새로운 임시 비밀번호 생성 */
			String newPw = memberService.createPw();
			/* 새로운 임시 비밀번호를 DB에 저장 */
			memberService.modifyPw(id,email,newPw);
			/* 이메일 발송 */
			String title = "* " + id + "님의 변경된 비밀번호입니다 *";
			String contents = "변경된 비밀번호는 n"+newPw+"n 입니다.";
			memberService.sendMail(email,title,contents);
			return "redirect:/sign/pwFind";
		}
		
		
		/* 장바구니 */
		@RequestMapping(value="/basket")
		public ModelAndView openTilesView6(ModelAndView mv){
		    mv.setViewName("/main/basket");
		    return mv;
		}
		
		/* 주문 페이지 */
		@RequestMapping(value="/order")
		public ModelAndView openTilesView7(ModelAndView mv){
		    mv.setViewName("/main/order");
		    return mv;
		}
		
		/* 문의 페이지 */
		@RequestMapping(value="/help")
		public ModelAndView openTilesView8(ModelAndView mv){
		    mv.setViewName("/main/help");
		    return mv;
		}
		/* 이메일 전송 */
		@RequestMapping(value = "/mail/mailSending")
		public String mailSending(HttpServletRequest request) {
		    String setfrom = "espalda@naver.com";         
		    String tomail  = request.getParameter("espalda@naver.com");     /* [받는사람] 이메일  */
		    String title   = request.getParameter("test - title");      /* [메일제목] */
		    String contents = request.getParameter("test - content");   /* [메일내용] */
		    memberService.sendMail(tomail, title, contents);

		    return "redirect:/mail/mailForm";
		}
		/* mailForm */
		@RequestMapping(value = "/mail/mailForm")
		public String mailForm() {

		    return "/sign/mailSend";
		}  
		

	
}
