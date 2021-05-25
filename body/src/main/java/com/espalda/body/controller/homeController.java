package com.espalda.body.controller;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.espalda.body.service.memberService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class homeController {
	
	@Autowired
	memberService memberservice;
	private static final Logger logger = LoggerFactory.getLogger(homeController.class);

	/** 메인 홈 화면 */
	@RequestMapping(value="/body")
	public ModelAndView main(ModelAndView mv){
		List <String> list = new ArrayList<String> ();
		list = memberservice.selectTestList();
		System.out.println("list : " + list);
	    mv.setViewName("/pages/main/home");
	    return mv;
	}
	
}
