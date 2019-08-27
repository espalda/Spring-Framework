package kr.green.plants.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/board")
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
		@RequestMapping(value="/list")
		public ModelAndView openTilesView0(ModelAndView mv){
		    mv.setViewName("/board/list");
		    return mv;
		}
		
		@RequestMapping(value="/display")
		public ModelAndView openTilesView1(ModelAndView mv){
		    mv.setViewName("/board/display");
		    return mv;
		}
		
		@RequestMapping(value="/register")
		public ModelAndView openTilesView2(ModelAndView mv){
		    mv.setViewName("/board/register");
		    return mv;
		}
		
		
		@RequestMapping(value="/modify")
		public ModelAndView openTilesView3(ModelAndView mv){
		    mv.setViewName("/board/modify");
		    return mv;
		}
		
		
		@RequestMapping(value="/delete")
		public ModelAndView openTilesView4(ModelAndView mv){
		    mv.setViewName("/board/delete");
		    return mv;
		}
		
	
}
