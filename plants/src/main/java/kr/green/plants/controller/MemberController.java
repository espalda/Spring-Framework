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

import kr.green.plants.service.MemberService;
import kr.green.plants.vo.MemberVO;
import kr.green.plants.vo.WishVO;

@Controller
@RequestMapping(value="/member")
public class MemberController {
		
	@Autowired
	MemberService memberService;
	
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
		
		/* 회원 주문 내역 */
		@RequestMapping(value="/order")
		public ModelAndView memberOrderGet(ModelAndView mv){
		    mv.setViewName("/member/order");
		    return mv;
		}
		
		/** 회원 위시리스트 내역 */
		@RequestMapping(value="/wishlist")
		public ModelAndView memberWishGet(ModelAndView mv, String member_id, Integer item_num){
			ArrayList<WishVO> wish = memberService.selectWish(member_id);
			memberService.insertWish(member_id, item_num);
		    mv.setViewName("/member/wishlist");
		    mv.addObject("wishlist", wish);
		    return mv;
		}
		
		
		/* 회원 게시글 내역 */
		@RequestMapping(value="/board")
		public ModelAndView openTilesView4(ModelAndView mv){
		    mv.setViewName("/member/board");
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
