package kr.green.plants.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.green.plants.service.BoardService;
import kr.green.plants.service.MemberService;
import kr.green.plants.vo.BoardVO;
import kr.green.plants.vo.MemberVO;
import kr.green.plants.vo.WishVO;

@Controller
@RequestMapping(value="/member")
public class MemberController {
		
	@Autowired
	MemberService memberService;
	
	@Autowired
	BoardService boardService;
	
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
		
		
		/* 옵션정보, 선택 수량 담기 미구현 */
		/** 회원 위시리스트 내역 */
		@RequestMapping(value="/wishlist")
		public ModelAndView memberWishList(ModelAndView mv, HttpServletRequest r){
			MemberVO user = (MemberVO)r.getSession().getAttribute("login");
			ArrayList<WishVO> wish = memberService.selectWish(user.getId());
			mv.addObject("wishlist", wish);
			mv.setViewName("/member/wishlist");
			return mv;
		}
		@RequestMapping(value="/wish")
		public String memberWishGet(Model model, String member_id, Integer item_num){
			memberService.insertWish(member_id, item_num);
		    return "redirect:/member/wishlist";
		}
		
		
		/* 회원 게시글 내역 */
		@RequestMapping(value="/board")
		public ModelAndView memberboardGet(ModelAndView mv, HttpServletRequest r){
			MemberVO user = (MemberVO)r.getSession().getAttribute("login");
			ArrayList<BoardVO> post =boardService.selectBoard2(user.getId());
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
