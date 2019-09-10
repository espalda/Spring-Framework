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
		
		/* 이벤트 상품 */
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

		
		
		    
		    
	
		/* 장바구니에 담긴 여러개의 정보와 옵션테이블에 있는 여러개의 정보를 가져와야 한다. */
		/* 로그인한 회원만 장바구니에 담아 저장할수 있다. */
		/** 장바구니 */
		@RequestMapping(value="/basket", method=RequestMethod.GET)
		public ModelAndView itemBasketGet(ModelAndView mv, String member_id){
			ArrayList<BasketVO> bas = itemService.selectBasket(member_id);
		    mv.setViewName("/item/basket");
			mv.addObject("basketList", bas);
		    return mv;
		}
		/** 장바구니 버튼을 누르면 basketVO에 정보를 DB에 넣는 기능 */
		@RequestMapping(value="/basket", method=RequestMethod.POST)
		public ModelAndView itemBasketPost(ModelAndView mv, String member_id, ItemVO ivo, OptionVO ovo, String[] option,
				 Integer option_total_price, Integer total_price, Integer[] option_count, Integer[] option_num){
			OptionVO opt = new OptionVO();
			for(int i=0; i<option.length ; i++) {
				opt.setNum(option_num[i]);
				opt.setOption(option[i]);
				opt.setOption_count(option_count[i]);
				itemService.insertBasket(opt, member_id, ivo, option_total_price, total_price);
			}
			mv.addObject("member_id", member_id);
		    mv.setViewName("/item/basket");
		    return mv;
		}
		/** 장바구니 삭제  */
		/* 체크박스에 체크된 아이템만 삭제되는 기능 추가 - jquery */
		@RequestMapping(value="/basket/delete", method=RequestMethod.GET)
		public String itemBasketDeleteGet(ModelAndView mv){
			//ArrayList<BasketVO> bas = itemService.deleteBasket();
		    return "redirect:/item/basket";
		}
		
		
		/* 주문 페이지 */
		@RequestMapping(value="/order")
		public ModelAndView openTilesView7(ModelAndView mv){
		    mv.setViewName("/item/order");
		    return mv;
		}
		
		
		
		
	
		
		
	
}
