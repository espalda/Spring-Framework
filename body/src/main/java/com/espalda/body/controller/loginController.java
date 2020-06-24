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
public class loginController {
	
	private static final Logger logger = LoggerFactory.getLogger(loginController.class);
	
	/** 메인 홈 화면  */
	@RequestMapping(value="pages/sign/sign_in")
	public ModelAndView main(ModelAndView mv){
	    mv.setViewName("/pages/sign/sign_in");
	    return mv;
	}
	
	@RequestMapping(value="pages/sign/sign_up")
	public ModelAndView main2(ModelAndView mv){
	    mv.setViewName("/pages/sign/sign_up");
	    return mv;
	}
	
	@RequestMapping(value="pages/sign/sign_out")
	public ModelAndView main5(ModelAndView mv){
	    mv.setViewName("/pages/sign/sign_out");
	    return mv;
	}
	
	@RequestMapping(value="pages/sign/find_id")
	public ModelAndView main3(ModelAndView mv){
	    mv.setViewName("/pages/sign/find_id");
	    return mv;
	}
	
	@RequestMapping(value="pages/sign/find_pw")
	public ModelAndView main4(ModelAndView mv){
	    mv.setViewName("/pages/sign/find_pw");
	    return mv;
	}
	
}
