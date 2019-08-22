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
		
		@RequestMapping(value="/seller")
		public ModelAndView openTilesView0(ModelAndView mv){
		    mv.setViewName("/admin/seller");
		    return mv;
		}
		
		@RequestMapping(value="/member")
		public ModelAndView openTilesView1(ModelAndView mv){
		    mv.setViewName("/admin/member");
		    return mv;
		}
		
		@RequestMapping(value="/item")
		public ModelAndView openTilesView2(ModelAndView mv){
		    mv.setViewName("/admin/item");
		    return mv;
		}
		
		
		@RequestMapping(value="/order")
		public ModelAndView openTilesView3(ModelAndView mv){
		    mv.setViewName("/admin/order");
		    return mv;
		}
		
		@RequestMapping(value="/board")
		public ModelAndView openTilesView4(ModelAndView mv){
		    mv.setViewName("/admin/board");
		    return mv;
		}
		
		@RequestMapping(value="/mail")
		public ModelAndView openTilesView5(ModelAndView mv){
		    mv.setViewName("/admin/mail");
		    return mv;
		}
		
		@RequestMapping(value="/chart")
		public ModelAndView openTilesView6(ModelAndView mv){
		    mv.setViewName("/admin/chart");
		    return mv;
		}
		
		
		
		
	
}
