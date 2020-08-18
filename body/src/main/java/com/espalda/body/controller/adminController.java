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
public class adminController {
	
	private static final Logger logger = LoggerFactory.getLogger(adminController.class);
	
	/** 메인 홈 화면  */
	@RequestMapping(value="pages/admin/ad_main")
	public ModelAndView main(ModelAndView mv){
	    mv.setViewName("/pages/admin/ad_main");
	    return mv;
	}
	@RequestMapping(value="pages/admin/ad_customer")
	public ModelAndView customer(ModelAndView mv){
	    mv.setViewName("/pages/admin/ad_customer");
	    return mv;
	}
	@RequestMapping(value="pages/admin/ad_cupon")
	public ModelAndView ad_cupon(ModelAndView mv){
	    mv.setViewName("/pages/admin/ad_cupon");
	    return mv;
	}
	@RequestMapping(value="pages/admin/ad_event")
	public ModelAndView ad_event(ModelAndView mv){
	    mv.setViewName("/pages/admin/ad_event");
	    return mv;
	}
	@RequestMapping(value="pages/admin/ad_item")
	public ModelAndView ad_item(ModelAndView mv){
	    mv.setViewName("/pages/admin/ad_item");
	    return mv;
	}
	@RequestMapping(value="pages/admin/ad_itemList")
	public ModelAndView ad_itemList(ModelAndView mv){
		mv.setViewName("/pages/admin/ad_itemList");
		return mv;
	}
	@RequestMapping(value="pages/admin/ad_notice")
	public ModelAndView ad_notice(ModelAndView mv){
	    mv.setViewName("/pages/admin/ad_notice");
	    return mv;
	}
	@RequestMapping(value="pages/admin/ad_order")
	public ModelAndView ad_order(ModelAndView mv){
	    mv.setViewName("/pages/admin/ad_order");
	    return mv;
	}
	
}
