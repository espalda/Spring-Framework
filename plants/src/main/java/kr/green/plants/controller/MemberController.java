package kr.green.plants.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.green.plants.service.MemberService;
import kr.green.plants.vo.MemberVO;

@Controller
@RequestMapping(value="/member")
public class MemberController {
		
	@Autowired
	MemberService memberService;
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
		
		/** 회원 수정 */
		@RequestMapping(value="/profile", method=RequestMethod.GET)
		public ModelAndView memberProfileGet(ModelAndView mv){
		    mv.setViewName("/member/profile");
		    return mv;
		}
		@RequestMapping(value="/profile", method=RequestMethod.POST)
		public String memberProfilePost(Model model, MemberVO mvo){
			memberService.updateMember(mvo);
		   return "redirect:/member/profile";
		}
		
		
		@RequestMapping(value="/order")
		public ModelAndView memberOrderGet(ModelAndView mv){
		    mv.setViewName("/member/menu");
		    return mv;
		}
		
		@RequestMapping(value="/wishlist")
		public ModelAndView openTilesView3(ModelAndView mv){
		    mv.setViewName("/member/wishlist");
		    return mv;
		}
		
		@RequestMapping(value="/board")
		public ModelAndView openTilesView4(ModelAndView mv){
		    mv.setViewName("/member/menu");
		    return mv;
		}
		
		@RequestMapping(value="/coupon")
		public ModelAndView openTilesView5(ModelAndView mv){
		    mv.setViewName("/member/menu");
		    return mv;
		}
		
		@RequestMapping(value="/address")
		public ModelAndView openTilesView6(ModelAndView mv){
		    mv.setViewName("/member/menu");
		    return mv;
		}
		
		/* 회원탈퇴 */
		@RequestMapping(value="/delete", method=RequestMethod.GET)
		public String memberWithdrawGet(Model model, String id){
			System.out.println("회원탈퇴 : " + id);
			memberService.deleteMember(id);
		   return "redirect:/signout";
		}
	
		
		
	
}
