package kr.green.plants.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.UUID;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.green.plants.service.AdminService;
import kr.green.plants.service.BoardService;
import kr.green.plants.service.ItemService;
import kr.green.plants.service.MemberService;
import kr.green.plants.utils.UploadFileUtils;
import kr.green.plants.vo.BoardVO;
import kr.green.plants.vo.ItemVO;
import kr.green.plants.vo.MemberVO;
import kr.green.plants.vo.OptionVO;
import kr.green.plants.vo.OrderVO;
import kr.green.plants.vo.SellerVO;

@Controller
@RequestMapping(value="/admin")
public class AdminController {
	
	@Autowired
	MemberService memberService;
	@Autowired
	BoardService boardService;
	@Autowired
	ItemService itemService;
	@Autowired
	AdminService adminService;
	
	@Resource
	private String uploadPath;
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
		
		/** 사업자 정보 */
		@RequestMapping(value="/seller")
		public ModelAndView adminSeller(ModelAndView mv){
			ArrayList<SellerVO> seller = memberService.selectSeller();
		    mv.setViewName("/admin/seller");
		    mv.addObject("sellerList", seller);
		    return mv;
		}
		/** 사업자 등록 */
		@RequestMapping(value = "/seller/register")
		public String adminSellerRegister(Model model, SellerVO svo) {
			if(svo != null) {
				memberService.updateSeller(svo);
			}
			return "redirect:/admin/seller";
			
		}
		
		
		/* 관리자 회원 권한 */
		/* 관리자 회원 등급 */
		/** 관리자 회원 정보 */
		@RequestMapping(value="/member")
		public ModelAndView adminMember(ModelAndView mv){
			ArrayList<MemberVO> member = memberService.selectMember();
		    mv.setViewName("/admin/member");
		    mv.addObject("memberList", member);
		    return mv;
		}

		
		
		/** 관리자 상품 관리 */
		@RequestMapping(value="/item")
		public ModelAndView adminItem(ModelAndView mv){
			ArrayList<ItemVO> ivo = itemService.selectItem();
			ArrayList<OptionVO> ovo = itemService.selectOption();
		    mv.setViewName("/admin/item");
		    mv.addObject("itemList", ivo);
		    mv.addObject("optionList", ovo);
		    return mv;
		}
		/** 관리자 상품 등록 */
		@RequestMapping(value="/item/register")
		public String adminItemRegister(Model model, ItemVO ivo, MultipartFile file2, String[] option, Integer[]option_price) throws IOException, Exception {
			if(file2.getOriginalFilename().length() != 0) {
				String file = UploadFileUtils.uploadFile(uploadPath, file2.getOriginalFilename(),file2.getBytes());
				ivo.setFile(file);
			}
			/* 상품 옵션을 배열을 통해서 집어넣는 방법 */
			for(int i=0; i<option.length; i++) {
				OptionVO ovo = new OptionVO();
				ovo.setOption(option[i]);
				ovo.setOption_price(option_price[i]);
				ovo.setItem_name(ivo.getName());
				itemService.insertOption(ovo);
			}
			itemService.insertItem(ivo);
			return "redirect:/admin/item";
		}
		/** 서버에 파일 저장 */
		private String uploadFile(String name, byte[] data) throws Exception{
		    /* 고유한 파일명을 위해 UUID를 이용 */
			UUID uid = UUID.randomUUID();
			String savaName = uid.toString() + "_" + name;
			File target = new File(uploadPath, savaName);
			FileCopyUtils.copy(data, target);
			return savaName;
		}
		
		
		
		/** 관리자 주문페이지 관리 */
		@RequestMapping(value="/order")
		public ModelAndView adminOrder(ModelAndView mv){
			ArrayList<OrderVO> order = adminService.selectOrderList();
		    mv.setViewName("/admin/order");
		    mv.addObject("orderList", order);
		    return mv;
		}
		
		
		/** 관리자 게시글 관리 */
		@RequestMapping(value="/board")
		public ModelAndView adminBoard(ModelAndView mv){
			ArrayList<BoardVO> board = boardService.selectBoard();
		    mv.setViewName("/admin/board");
		    mv.addObject("boardList", board);
		    return mv;
		}
		/* 관리자 공지 게시글 등록 */
		/* 관리자 게시글 댓글 관리 */
		/* 페이지네이션*/
		/* 현재 valid가 I인 상태만 리스트 목록에 존재 */
		
		
		
		@RequestMapping(value="/mail")
		public ModelAndView adminMail(ModelAndView mv){
		    mv.setViewName("/admin/mail");
		    return mv;
		}
		
		@RequestMapping(value="/chart")
		public ModelAndView adminChart(ModelAndView mv){
		    mv.setViewName("/admin/chart");
		    return mv;
		}
		
		
		
		
	
}
