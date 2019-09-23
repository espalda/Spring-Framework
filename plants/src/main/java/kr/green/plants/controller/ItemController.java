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

import kr.green.plants.pagination.Criteria;
import kr.green.plants.pagination.PageMaker;
import kr.green.plants.service.AdminService;
import kr.green.plants.service.BoardService;
import kr.green.plants.service.ItemService;
import kr.green.plants.service.PageMakerService;
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
	@Autowired
	PageMakerService pageMakerService;
		
		/** [new] 새상품 - 최신순 아이템 3가지 화면에 뿌려주는 기능 */
		@RequestMapping(value="/new")
		public ModelAndView itemNew(ModelAndView mv){
			ArrayList<ItemVO> ivo = itemService.selectNewItem();
		    mv.setViewName("/item/new");
		    mv.addObject("itemNewList", ivo);
		    return mv;
		}
		
		
		/** 이벤트 상품 */
		@RequestMapping(value="/event")
		public ModelAndView itemEvent(ModelAndView mv){
		    mv.setViewName("/item/event");
		    return mv;
		}
		
		/** 상품 리스트 */
		@RequestMapping(value="/list")
		public ModelAndView itemList(ModelAndView mv, Criteria cri){
			String valid = "I";
			int displayPageNum = 3;
			cri.setPerPageNum(6);
		    ArrayList<ItemVO> ivo = itemService.selectItemList(cri, valid);
		    int totalCount = itemService.selectItemCount(cri, valid);
			PageMaker pm = pageMakerService.getPageMaker(displayPageNum, cri, totalCount);
		    mv.setViewName("/item/list");
		    mv.addObject("itemList", ivo);
		    mv.addObject("pageMaker", pm);
		    return mv;
		}
		
		/** 상품 상세 화면 */
		@RequestMapping(value="/display", method=RequestMethod.GET)
		public ModelAndView itemDisplayGet(ModelAndView mv, Integer num){
			ItemVO ivo = itemService.selectItemNum(num);
			ArrayList<OptionVO> ovo = itemService.selectOptionListNum(num);
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
		    OptionVO op = itemService.selectOptionNum(opt.getNum());
		    map.put("op", op);
			return map;
		}
		/** 상품 상세 화면에서 장바구니로 넘기는 기능 */
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
		/** 상품 상세 화면에서 주문페이지로 넘기는 기능 */
		@RequestMapping(value="/order", method=RequestMethod.POST)
		public String itemOrderPost1(Model model, String id, Integer total, 
									Integer[] option_num, Integer[] option_count){
			//반복문으로 배열을 하나씩 꺼낸다
			//빈 옵션 VO 객체에 집어넣는다
			//값이 추가된 옵션 VO 객체를 빈 ArrayList에 add로 추가한다	0번지
			//다음 번지 값을 VO 객체에 다시 집어넣는다
			//값이 추가된 옵션 VO 객체를 빈 ArrayList에 add로 추가한다	1번지
			OptionVO opt = new OptionVO();
			for(int i=0; i<option_num.length; i++) {
				opt.setNum(option_num[i]);
				opt.setOption_count(option_count[i]);
			}
			 model.addAttribute("total", total);
			 model.addAttribute("orderList", opt);
			 model.addAttribute("option_num", option_num);
			 model.addAttribute("option_count", option_count);
			return "redirect:/item/order";
		}
		
		


		/** [basket] 장바구니 */
		@RequestMapping(value="/basket", method=RequestMethod.GET)
		public ModelAndView itemBasketGet(ModelAndView mv, HttpServletRequest r){
			MemberVO user = (MemberVO)r.getSession().getAttribute("login");
			ArrayList<BasketVO> bas = itemService.selectBasketListId(user.getId());
		    mv.setViewName("/item/basket");
			mv.addObject("basketList", bas);
		    return mv;
		}
		/** ajax 장바구니 수정 */
		@RequestMapping(value ="/basket/modify")
		@ResponseBody
		public Map<Object, Object> basketModify(BasketVO bvo){
		    Map<Object, Object> map = new HashMap<Object, Object>();
		    BasketVO bas = itemService.selectBasketNum(bvo.getNum());
		    bas.setOption_count(bvo.getOption_count());
		    itemService.updeteBasket(bas);
		    return map;
		}
		/** ajax 장바구니 상품 삭제 */
		@RequestMapping(value ="/basket/remove")
		@ResponseBody
		public Map<Object, Object> basketRemove(Integer num){
		    Map<Object, Object> map = new HashMap<Object, Object>();
		    BasketVO bas = itemService.selectBasketNum(num);
		    bas.setValid("D");
		    itemService.updeteBasket(bas);
		    return map;
		}
		/** 장바구니에서 주문페이지로 넘어가는 기능 */
		@RequestMapping(value="/basket/order", method=RequestMethod.POST) 
		public String itemBasketSendPost(Model model, HttpServletRequest r, Integer total, Integer[] basket_num,
										Integer[] option_num, Integer[] option_count, Integer[] check){
			
			MemberVO user = (MemberVO)r.getSession().getAttribute("login");
			BasketVO bas = new BasketVO();
			OptionVO opt = new OptionVO();
			for(int i=0; i<option_num.length ; i++) {
				if(check[i] == 1) {
					opt.setNum(option_num[i]);
					opt.setOption_count(option_count[i]);
					bas.setNum(basket_num[i]);
				}
			}
			model.addAttribute("id", user.getId());
			model.addAttribute("basket_num", basket_num);
			model.addAttribute("total", total);
			model.addAttribute("option_num", option_num);
			model.addAttribute("option_count", option_count);
			return "redirect:/item/order";
		}
		

		
		/** [order] */
		/** 제품 상제 페이지와 장바구니에서 넘어온 주문 페이지 정보 */
		@RequestMapping(value="/order", method=RequestMethod.GET)
		public ModelAndView itemOrderGet(ModelAndView mv, HttpServletRequest r, Integer total, Integer[] basket_num,
										Integer[] option_num, Integer[] option_count){
			MemberVO user = (MemberVO)r.getSession().getAttribute("login");
			ArrayList<BasketVO> bas = new ArrayList<BasketVO>();
			ArrayList<OptionVO> opt = new ArrayList<OptionVO>();
			if(basket_num != null) {
				for(int i=0; i<option_num.length; i++) {
					OptionVO ovo = itemService.selectOptionNum(option_num[i]);
					ovo.setOption_count(option_count[i]);
					opt.add(ovo);
					
					BasketVO bvo = new BasketVO();
					bvo.setNum(basket_num[i]);
					bas.add(bvo);
					}	
			}else {
				for(int i=0; i<option_num.length; i++) {
					OptionVO ovo = itemService.selectOptionNum(option_num[i]);
					ovo.setOption_count(option_count[i]);
					opt.add(ovo);
				}
			}
			mv.setViewName("/item/order");
		    mv.addObject("id", user.getId());
		    mv.addObject("total", total);
		    mv.addObject("optionList", opt);
		    mv.addObject("basket", bas);
		    return mv;
		}
		
		
		
		/** 결제 후 주문페이지 DB 저장 */
		@RequestMapping(value="/paid", method=RequestMethod.GET)
		public ModelAndView itemPaidGet(ModelAndView mv, String order_num, Integer total){
			//ArrayList<OrderVO> order = itemService.selectOrderPaid(order_num);
			mv.setViewName("/item/paid");
			mv.addObject("order_num", order_num);
			mv.addObject("total", total);
			return mv;
		}
		@RequestMapping(value="/paid", method=RequestMethod.POST)
		public String itemPaidPost(Model model, String id, Integer total, Integer[] basket_num,
									Integer[] option_num, Integer[] option_count){
			OrderVO order = new OrderVO();
			order.setOrder_num(itemService.orderNum());
			if(basket_num != null) {
				for(int i=0; i<option_num.length ; i++) {
					OptionVO ovo = itemService.selectOptionNum(option_num[i]);
					order.setItem_num(ovo.getItem_num());
					order.setOption_num(option_num[i]);
					order.setOrder_count(option_count[i]);
					itemService.insertOrder(order, id, total);
					
					BasketVO bas = itemService.selectBasketNum(basket_num[i]);
					bas.setValid("주문완료");
					itemService.updeteBasket(bas);
				}
			}else {
				for(int i=0; i<option_num.length ; i++) {
					OptionVO ovo = itemService.selectOptionNum(option_num[i]);
					order.setItem_num(ovo.getItem_num());
					order.setOption_num(option_num[i]);
					order.setOrder_count(option_count[i]);
					itemService.insertOrder(order, id, total);
				}
			}
			 model.addAttribute("order_num", order.getOrder_num());
			 model.addAttribute("total", total);
		    return "redirect:/item/paid";
		}
		
		
}
