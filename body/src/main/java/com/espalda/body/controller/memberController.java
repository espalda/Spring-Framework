package com.espalda.body.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.espalda.body.service.memberService;

@Controller
public class memberController {
	
	@Autowired
	memberService memberservice;
	
	@RequestMapping(value="/pages/member/mb_main")
	public ModelAndView mb_main(ModelAndView mv){
		List <String> list = new ArrayList<String> ();
		list = memberservice.selectTestList();
		System.out.println(list);
	    mv.setViewName("/pages/member/mb_main");
	    return mv;
	}
	@RequestMapping(value="/pages/member/mb_order")
	public ModelAndView mb_order(ModelAndView mv){
	    mv.setViewName("/pages/member/mb_order");
	    return mv;
	}
	@RequestMapping(value="/pages/member/mb_deliver")
	public ModelAndView mb_deliver(ModelAndView mv){
	    mv.setViewName("/pages/member/mb_deliver");
	    return mv;
	}
	@RequestMapping(value="/pages/member/mb_board")
	public ModelAndView mb_board(ModelAndView mv){
	    mv.setViewName("/pages/member/mb_board");
	    return mv;
	}
	@RequestMapping(value="/pages/member/mb_edit")
	public ModelAndView mb_edit(ModelAndView mv){
	    mv.setViewName("/pages/member/mb_edit");
	    return mv;
	}
	/** 위시리스트 */
	@RequestMapping(value="/test/it_wish")
	public ModelAndView wish(ModelAndView mv){
		mv.setViewName("/pages/member/mb_wish");
		return mv;
	}
}
