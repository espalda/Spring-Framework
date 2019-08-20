package kr.green.plants.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/admin")
public class AdminController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
		@RequestMapping(value="/list")
		public ModelAndView openTilesView0(ModelAndView mv){
		    mv.setViewName("/admin/list");
		    return mv;
		}
		
		@RequestMapping(value="/display")
		public ModelAndView openTilesView1(ModelAndView mv){
		    mv.setViewName("/admin/display");
		    return mv;
		}
		
		
		@RequestMapping(value="/modify")
		public ModelAndView openTilesView2(ModelAndView mv){
		    mv.setViewName("/admin/modify");
		    return mv;
		}
		
	
}
