package kr.green.plants.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.green.plants.service.ItemService;
import kr.green.plants.vo.ItemVO;

@Controller
@RequestMapping(value="/item")
public class ItemController {
	
	@Autowired
	ItemService itemService;
	
	private static final Logger logger = LoggerFactory.getLogger(ItemController.class);
		
		/* 새상품 */
		@RequestMapping(value="/new")
		public ModelAndView itemNew(ModelAndView mv){
			ArrayList<ItemVO> ivo = itemService.selectNewItem();
		    mv.setViewName("/item/new");
		    mv.addObject("itemNewList", ivo);
		    return mv;
		}
		
		/* 이벤트 상품 */
		@RequestMapping(value="/event")
		public ModelAndView openTilesView3(ModelAndView mv){
		    mv.setViewName("/item/event");
		    return mv;
		}
		
		
		
		/* 상품 카테고리별 뿌리기 */
		/** 상품 리스트 */
		@RequestMapping(value="/list")
		public ModelAndView itemList(ModelAndView mv, Model model){
		    mv.setViewName("/item/list");
		    ArrayList<ItemVO> ivo = itemService.selectItem();
		    model.addAttribute("itemList", ivo);
		    return mv;
		}
		
		
		/** 제품 상세 화면 */
		@RequestMapping(value="/display", method=RequestMethod.GET)
		public ModelAndView itemDisplayGet(ModelAndView mv, Integer num){
			ItemVO ivo = itemService.getItem(num);
		    mv.setViewName("/item/display");
		    mv.addObject("item", ivo);
		    return mv;
		}
		
		
	
		
		
		
		
	
		
		
	
}
