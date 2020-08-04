package com.espalda.body.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class memberController {
	
	@RequestMapping(value="/pages/member/mb_main")
	public ModelAndView mb_main(ModelAndView mv){
	    mv.setViewName("/pages/member/mb_main");
	    return mv;
	}
	@RequestMapping(value="/pages/member/mb_order")
	public ModelAndView mb_order(ModelAndView mv){
	    mv.setViewName("/pages/member/mb_order");
	    return mv;
	}
}
