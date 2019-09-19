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

import kr.green.plants.service.BoardService;
import kr.green.plants.service.ItemService;
import kr.green.plants.service.MemberService;
import kr.green.plants.vo.BoardVO;
import kr.green.plants.vo.MemberVO;
import kr.green.plants.vo.OrderVO;
import kr.green.plants.vo.WishVO;

@Controller
@RequestMapping(value="/member")
public class MemberController {
		
	@Autowired
	MemberService memberService;
	@Autowired
	BoardService boardService;
	@Autowired
	ItemService itemService;
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
		
		/** 회원 수정 */
		@RequestMapping(value="/profile", method=RequestMethod.GET)
		public ModelAndView memberProfileGet(ModelAndView mv){
		    mv.setViewName("/member/profile");
		    return mv;
		}
		@RequestMapping(value="/profile", method=RequestMethod.POST)
		public String memberProfilePost(Model model, MemberVO mvo){
			memberService.updateMember(mvo);
		   return "redirect:/member/profile";
		}
		
		/** 회원 주문 내역 */
		@RequestMapping(value="/order")
		public ModelAndView memberOrderGet(ModelAndView mv, HttpServletRequest r){
			MemberVO user = (MemberVO)r.getSession().getAttribute("login");
			ArrayList<OrderVO> order = itemService.selectOrderListId(user.getId());
			System.out.println("회원 주문 내역 : "+order);
		    mv.setViewName("/member/order");
		    mv.addObject("orderList", order);
		    return mv;
		}
		
		
		/* 옵션정보, 선택 수량 담기 미구현 */
		/** 회원 위시리스트 내역 */
		@RequestMapping(value="/wishlist")
		public ModelAndView memberWishList(ModelAndView mv, HttpServletRequest r){
			MemberVO user = (MemberVO)r.getSession().getAttribute("login");
			System.out.println("위시리스트 아이디 : "+ user.getId());
			ArrayList<WishVO> wish = memberService.selectWishListId(user.getId());
			System.out.println("위시리스트 리스트 : "+wish);
			mv.addObject("wishlist", wish);
			mv.setViewName("/member/wishlist");
			return mv;
		}
		@RequestMapping(value="/wish")
		public String memberWishGet(Model model, String id, Integer num){
			memberService.insertWish(id, num);
		    return "redirect:/member/wishlist";
		}
		/** ajax 위시리스트 상품 삭제 */
		@RequestMapping(value ="/wish/remove")
		@ResponseBody
		public Map<Object, Object> basketRemove(Integer num){
		    Map<Object, Object> map = new HashMap<Object, Object>();
		    System.out.println(num);
		    
		    return map;
		}
		
		
		/* 회원 게시글 내역 */
		@RequestMapping(value="/board")
		public ModelAndView memberboardGet(ModelAndView mv, HttpServletRequest r){
			MemberVO user = (MemberVO)r.getSession().getAttribute("login");
			ArrayList<BoardVO> post =boardService.selectBoardListId(user.getId());
		    mv.setViewName("/member/board");
		    mv.addObject("boardList", post);
		    return mv;
		}
		
		/* 회원 보유 쿠폰 내역 */
		@RequestMapping(value="/coupon")
		public ModelAndView openTilesView5(ModelAndView mv){
		    mv.setViewName("/member/coupon");
		    return mv;
		}
		
		/* 회원 주소록 */
		@RequestMapping(value="/address")
		public ModelAndView openTilesView6(ModelAndView mv){
		    mv.setViewName("/member/address");
		    return mv;
		}
		
		/** 회원탈퇴 */
		@RequestMapping(value="/delete", method=RequestMethod.GET)
		public String memberWithdrawGet(Model model, String id){
			memberService.deleteMember(id);
		   return "redirect:/signout";
		}
	
		
		
	
}
