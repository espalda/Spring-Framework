package kr.green.plants.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
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
import kr.green.plants.vo.OrderVO;

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
		/** item/display >> basket 장바구니 버튼을 누르면 basketVO에 정보를 DB에 넣는 기능 */
		@RequestMapping(value="/basket", method=RequestMethod.POST)
		public String itemBasketPost(Model model, String id, Integer num, Integer[] option_num, Integer[] option_count){
			OptionVO opt = new OptionVO(); /** 옵션정보는 상품 하나당 여러개이기 때문에 배열로 집어넣는다 */
			for(int i=0; i<option_num.length ; i++) {
				opt.setNum(option_num[i]);
				opt.setOption_count(option_count[i]);
				itemService.insertBasket(opt, id, num);
			}
			return "redirect:/item/basket";
		}
		/** basket >> order */
		@RequestMapping(value="/basket/send", method=RequestMethod.POST) 
		public String itemBasketSendPost(Model model, String id, Integer[] num, Integer total,
										Integer[] option_num, Integer[] option_count, Integer[] check){
			for(int tmp : num) {
				System.out.println("장바구니에서 아이템 넘버가 잘 넘어오나 확인 : "+tmp);
			}
			System.out.println("장바구니에서 아이템 넘버" +num);
			
			OptionVO opt = new OptionVO();
			for(int i=0; i<option_num.length ; i++) {
				if(check[i] == 1) {
					opt.setNum(option_num[i]);
					opt.setOption_count(option_count[i]);
				}
			}
			model.addAttribute("id", id);
			model.addAttribute("numList", num);
			model.addAttribute("total", total);
			model.addAttribute("option_num", option_num);
			model.addAttribute("option_count", option_count);
			return "redirect:/item/order";
			
		}
		
		
		
		
		
		
		
		
		/** 주문 페이지 - 화면 item/display && basket >> order 화면*/
		@RequestMapping(value="/order", method=RequestMethod.GET)
		public ModelAndView itemOrderGet(ModelAndView mv, HttpServletRequest r, Integer total, Integer num, Integer[] numList, 
										Integer[] option_num, Integer[] option_count){
			MemberVO user = (MemberVO)r.getSession().getAttribute("login");
			
			ItemVO it = itemService.getItem(num);
			
			ArrayList<ItemVO> items = new ArrayList<ItemVO>();
			System.out.println(numList.length);
			for(int i=0; i<numList.length; i++) {
				ItemVO ivo = itemService.getItem(numList[i]);
				items.add(ivo);
				System.out.println("아이템 : "+ivo);
			}
			
			
			ArrayList<OptionVO> opt = new ArrayList<OptionVO>();
			for(int i=0; i<option_num.length; i++) {
				OptionVO ovo = itemService.getOption2(option_num[i]);
				ovo.setOption_count(option_count[i]);
				opt.add(ovo);
				System.out.println("옵션 : "+ovo);
			}
		    mv.setViewName("/item/order");
		    mv.addObject("id", user.getId());
		    mv.addObject("total", total);
		    mv.addObject("item", it);
		    mv.addObject("optionList", opt);
		    mv.addObject("itemList", items);
		    return mv;
		}
		/** 결제 전 주문페이지 정보 확인 및 입력 & 상품 상세 페이지에서 정보를 넘겨줌 */
		@RequestMapping(value="/order", method=RequestMethod.POST)
		public String itemOrderPost1(Model model, String id, Integer num, Integer total, 
									Integer[] option_num, Integer[] option_count){
			//반복문으로 배열을 하나씩 꺼낸다
			//빈 옵션 VO 객체에 집어넣는다
			//값이 추가된 옵션 VO 객체를 빈 ArrayList에 add로 추가한다	0번지
			//다음 번지 값을 VO 객체에 다시 집어넣는다
			//값이 추가된 옵션 VO 객체를 빈 ArrayList에 add로 추가한다	1번지
			ItemVO item = itemService.getItem(num);
			OptionVO opt = new OptionVO();
			for(int i=0; i<option_num.length; i++) {
				opt.setNum(option_num[i]);
				opt.setOption_count(option_count[i]);
			}
			 model.addAttribute("total", total);
			 model.addAttribute("num", item.getNum());
			 model.addAttribute("orderList", opt);
			 model.addAttribute("option_num", option_num);
			 model.addAttribute("option_count", option_count);
			return "redirect:/item/order";
		}
		/** 결제 후 주문페이지 DB 저장 */
		@RequestMapping(value="/paid", method=RequestMethod.GET)
		public ModelAndView itemPaidGet(ModelAndView mv, String order_num, Integer total){
			mv.setViewName("/item/paid");
			mv.addObject("order_num", order_num);
			mv.addObject("total", total);
			return mv;
		}
		@RequestMapping(value="/paid", method=RequestMethod.POST)
		public String itemPaidPost(Model model, String id, Integer num, Integer total, 
									Integer[] option_num, Integer[] option_count){
			OrderVO order = new OrderVO();
			order.setOrder_num(itemService.orderNum());
			for(int i=0; i<option_num.length ; i++) {
				order.setOption_num(option_num[i]);
				order.setOption_count(option_count[i]);
				itemService.insertOrder(order, id, num, total);
			}
			 model.addAttribute("order_num", order.getOrder_num());
			 model.addAttribute("total", total);
		    return "redirect:/item/paid";
		}
		
		
}
