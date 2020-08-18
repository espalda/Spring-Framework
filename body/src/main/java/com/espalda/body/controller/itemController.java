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

	/** 상품 리스트 */
	@RequestMapping(value="/pages/item/it_list")
	public ModelAndView it_list(ModelAndView mv){
	    mv.setViewName("/pages/item/it_list");
	    return mv;
	}
	
	/** 상품 상세 */
	@RequestMapping(value="/pages/item/it_detail")
	public ModelAndView it_detail(ModelAndView mv){
		mv.setViewName("/pages/item/it_detail");
		return mv;
	}
	
	/** 장바구니 */
	@RequestMapping(value="/test/basket")
	public ModelAndView basket(ModelAndView mv){
		mv.setViewName("/pages/item/basket");
		return mv;
	}
}