package kr.green.plants.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
		@RequestMapping(value="/")
		public ModelAndView openTilesView(ModelAndView mv){
		    mv.setViewName("/main/home");
		    return mv;
		}
		
		@RequestMapping(value="/signup")
		public ModelAndView openTilesView2(ModelAndView mv){
		    mv.setViewName("/sign/signup");
		    return mv;
		}
		
		@RequestMapping(value="/signin")
		public ModelAndView openTilesView3(ModelAndView mv){
		    mv.setViewName("/sign/signin");
		    return mv;
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
	
	
		
		
	
}
