package kr.green.plants.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/member")
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
		@RequestMapping(value="/display")
		public ModelAndView openTilesView0(ModelAndView mv){
		    mv.setViewName("/member/display");
		    return mv;
		}
		
		
		@RequestMapping(value="/order")
		public ModelAndView openTilesView2(ModelAndView mv){
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
		
		
	
		
		
	
}
