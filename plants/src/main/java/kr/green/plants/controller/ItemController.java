package kr.green.plants.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.green.plants.service.ItemService;
import kr.green.plants.vo.BasketVO;
import kr.green.plants.vo.ItemVO;
import kr.green.plants.vo.MemberVO;
import kr.green.plants.vo.OptionVO;

@Controller
@RequestMapping(value="/item")
public class ItemController {
	
	@Autowired
	ItemService itemService;
	
	private static final Logger logger = LoggerFactory.getLogger(ItemController.class);
		
		/** 새상품 */
		@RequestMapping(value="/new")
		public ModelAndView itemNew(ModelAndView mv){
			ArrayList<ItemVO> ivo = itemService.selectNewItem();
		    mv.setViewName("/item/new");
		    mv.addObject("itemNewList", ivo);
		    return mv;
		}
		
		
		/** 이벤트 상품 - 쿠폰 미구현 */
		@RequestMapping(value="/event")
		public ModelAndView itemEvent(ModelAndView mv){
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
		@RequestMapping(value="/display")
		public ModelAndView itemDisplay(ModelAndView mv, Integer num){
			ItemVO ivo = itemService.getItem(num);
			ArrayList<OptionVO> ovo = itemService.getOption(ivo.getName());
		    mv.setViewName("/item/display");
		    mv.addObject("item", ivo);
		    mv.addObject("optionList", ovo);
		    return mv;
		}
		/** ajax 옵션 정보 가져오기 */
		@RequestMapping(value ="/option")
		@ResponseBody
		public Map<Object, Object> idFind(OptionVO opt){
		    Map<Object, Object> map = new HashMap<Object, Object>();
		    OptionVO op = itemService.getOption2(opt.getNum());
		    map.put("op", op);
			return map;
		}


		/** 장바구니 */
		@RequestMapping(value="/basket", method=RequestMethod.GET)
		public ModelAndView itemBasketGet(ModelAndView mv, HttpServletRequest r){
			MemberVO user = (MemberVO)r.getSession().getAttribute("login");
			ArrayList<BasketVO> bas = itemService.selectBasket(user.getId());
		    mv.setViewName("/item/basket");
			mv.addObject("basketList", bas);
		    return mv;
		}
		/** 장바구니 버튼을 누르면 basketVO에 정보를 DB에 넣는 기능 */
		@RequestMapping(value="/basket", method=RequestMethod.POST) /* ivo를 num으로 member_id를 id로 변경 */
		public String itemBasketPost(Model model, String member_id, ItemVO ivo, Integer[] option_count, Integer[] option_num){
			OptionVO opt = new OptionVO();
			for(int i=0; i<option_num.length ; i++) {
				opt.setNum(option_num[i]);
				opt.setOption_count(option_count[i]);
				itemService.insertBasket(opt, member_id, ivo);
			}
			model.addAttribute("member_id", member_id);
			return "redirect:/item/basket";
		}
		
		
		/** 주문 페이지 */
		@RequestMapping(value="/order", method=RequestMethod.GET)
		public ModelAndView itemOrderGet(ModelAndView mv){
		    mv.setViewName("/item/order");
		    return mv;
		}
		@RequestMapping(value="/order", method=RequestMethod.POST)
		public String itemOrderPost(Model model, String member_id, Integer num){
		    return "redirect:/item/order";
		}
		
}
