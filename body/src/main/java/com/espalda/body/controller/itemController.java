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
public class itemController {
	
	private static final Logger logger = LoggerFactory.getLogger(itemController.class);

	/** 메인 홈 화면 */
	@RequestMapping(value="/pages/item/item_list")
	public ModelAndView main(ModelAndView mv){
	    mv.setViewName("/pages/item/item_list");
	    return mv;
	}
	
	
}
