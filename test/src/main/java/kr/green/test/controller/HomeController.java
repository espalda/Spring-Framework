package kr.green.test.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.green.test.service.MemberService;
import kr.green.test.vo.MemberVO;

@Controller
public class HomeController {
	
	@Autowired
	MemberService memberService;
	
		@RequestMapping(value= "/", method=RequestMethod.GET)
		public ModelAndView mainGet(ModelAndView mv){
		    mv.setViewName("/main/home");
		    return mv;
		}
		
		@RequestMapping(value= "/", method=RequestMethod.POST)
		public String mainPost(Model model, MemberVO loginInfo){
			MemberVO user = memberService.signin(loginInfo);
			model.addAttribute("user", user);
		    return "redirect:/";
		}
		
		@RequestMapping(value= "/signout", method=RequestMethod.GET)
		public String signout(HttpServletRequest r) throws Exception{
		 r.getSession().removeAttribute("user");
		    return "redirect:/";
		}
		
		
		
		@RequestMapping(value= "/signup", method=RequestMethod.GET)
		public ModelAndView signup(ModelAndView mv, MemberVO mVo){
			mv.setViewName("/member/signup");
		    return mv;
		}
		
		@RequestMapping(value ="/dup")
		@ResponseBody
		public boolean idcheck(@RequestBody String id){
			boolean isMember = memberService.getMember(id) != null;
		    return isMember;
		}


	
}