package com.espalda.body.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class boardController {
	
	private static final Logger logger = LoggerFactory.getLogger(boardController.class);

	/** 메인 홈 화면 */
	@RequestMapping(value="/pages/board/board_list")
	public ModelAndView main(ModelAndView mv){
	    mv.setViewName("/pages/board/board_list");
	    return mv;
	}
	@RequestMapping(value="/pages/board/board_desc")
	public ModelAndView board_desc(ModelAndView mv){
	    mv.setViewName("/pages/board/board_desc");
	    return mv;
	}
	@RequestMapping(value="/pages/board/board_write")
	public ModelAndView board_write(ModelAndView mv){
	    mv.setViewName("/pages/board/board_write");
	    return mv;
	}
	
}
