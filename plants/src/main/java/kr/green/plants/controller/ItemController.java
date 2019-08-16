package kr.green.plants.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/item")
public class ItemController {
	
	private static final Logger logger = LoggerFactory.getLogger(ItemController.class);
	
		@RequestMapping(value="/new")
		public ModelAndView openTilesView2(ModelAndView mv){
		    mv.setViewName("/item/new");
		    return mv;
		}
		
		@RequestMapping(value="/event")
		public ModelAndView openTilesView3(ModelAndView mv){
		    mv.setViewName("/item/event");
		    return mv;
		}
		
	
		@RequestMapping(value="/list")
		public ModelAndView openTilesView0(ModelAndView mv){
		    mv.setViewName("/item/list");
		    return mv;
		}
		
		@RequestMapping(value="/display")
		public ModelAndView openTilesView1(ModelAndView mv){
		    mv.setViewName("/item/Succulents");
		    return mv;
		}
		
		
		
		
	
		
		
	
}
