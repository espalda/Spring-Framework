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
		    mv.addObject("setHeader", "타일즈");
		    return mv;
		}
		
		@RequestMapping(value="/signup")
		public ModelAndView openTilesView2(ModelAndView mv){
		    mv.setViewName("/sign/signup");
		    mv.addObject("setHeader", "타일즈");
		    return mv;
		}
		
		@RequestMapping(value="/signin")
		public ModelAndView openTilesView3(ModelAndView mv){
		    mv.setViewName("/sign/signin");
		    mv.addObject("setHeader", "타일즈");
		    return mv;
		}
	
		
		
	
}
