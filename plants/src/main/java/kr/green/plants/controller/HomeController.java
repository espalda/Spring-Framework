package kr.green.plants.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.green.plants.service.MemberService;
import kr.green.plants.vo.MemberVO;

@Controller
public class HomeController {
	
	@Autowired
	MemberService memberService;
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
		@RequestMapping(value="/")
		public ModelAndView main(ModelAndView mv){
		    mv.setViewName("/main/home");
		    return mv;
		}
		
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
		
		
		@RequestMapping(value="/signin", method=RequestMethod.GET)
		public ModelAndView signinGet(ModelAndView mv){
		    mv.setViewName("/sign/signin");
		    return mv;
		}
		@RequestMapping(value="/signin", method=RequestMethod.POST)
		public String signinPost(Model model, MemberVO mvo){
			if(mvo == null) return null;
			MemberVO user = memberService.signin(mvo);	/* 없는 아이디 일 때 */
			if(user != null) {	/** 유저정보가 null이 아니면 session에 user 정보를 넣고 메인 화면으로 이동 */
				model.addAttribute("login", user);
				logger.info("로그인 성공");
				return "redirect:/";
			}
			logger.info("로그인 실패");
			return "redirect:/signin"; 
		}
		
		@RequestMapping(value="/signout", method=RequestMethod.GET)
		public String signoutGet(HttpServletRequest r){
			r.getSession().removeAttribute("login");
		    return "redirect:/";
		}
		
		@RequestMapping(value="/idFind")
		public ModelAndView openTilesView4(ModelAndView mv){
		    mv.setViewName("/sign/idFind");
		    return mv;
		}
	
		@RequestMapping(value="/pwFind")
		public ModelAndView openTilesView5(ModelAndView mv){
		    mv.setViewName("/sign/pwFind");
		    return mv;
		}
		
		@RequestMapping(value="/basket")
		public ModelAndView openTilesView6(ModelAndView mv){
		    mv.setViewName("/main/basket");
		    return mv;
		}
		
		@RequestMapping(value="/order")
		public ModelAndView openTilesView7(ModelAndView mv){
		    mv.setViewName("/main/order");
		    return mv;
		}
		
		@RequestMapping(value="/help")
		public ModelAndView openTilesView8(ModelAndView mv){
		    mv.setViewName("/main/help");
		    return mv;
		}
	
	
	
		
		
	
}
