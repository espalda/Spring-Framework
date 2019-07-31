package kr.green.spring.controller;

import java.util.ArrayList;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import kr.green.spring.pagination.Criteria;
import kr.green.spring.pagination.PageMaker;
import kr.green.spring.service.BoardService;
import kr.green.spring.service.MemberService;
import kr.green.spring.service.PageMakerService;
import kr.green.spring.vo.BoardVO;
import kr.green.spring.vo.MemberVO;

@Controller
@RequestMapping(value="/admin")
public class AdminController {
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	BoardService boardService;
	
	@Autowired
	PageMakerService pageMakerService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
		@RequestMapping(value="/user/list", method=RequestMethod.GET)
		public String adminUserListGet(Model model, Criteria cri) {
			logger.info("페이지네이션 관리자 회원 관리 리스트");
			cri.setPerPageNum(2);
			ArrayList<MemberVO> memberList = memberService.getAllMember(cri);
			int totalCount = memberService.getTotalCount(cri);
			PageMaker pm = pageMakerService.getPageMaker(5, cri, totalCount); //페이지메이커 생성 필수 3가지
			model.addAttribute("pageMaker", pm);
			model.addAttribute("list", memberList);
			return "admin/list";
		}
		
		@RequestMapping(value="/user/update", method=RequestMethod.GET)
		public String adminUserUpdateGet(Model model, Criteria cri, MemberVO mVo) {
			memberService.updateAuthority(mVo);
			model.addAttribute("page", cri.getPage());
			return "redirect:/admin/user/list";
		}
		
		@RequestMapping(value="/board/list", method=RequestMethod.GET)
		public String adminBoardListGet(Model model, Criteria cri) {
			logger.info("페이지네이션 관리자 게시글 관리 리스트");
			cri.setPerPageNum(5);
			ArrayList<BoardVO> boardList = boardService.getBoardListAll(cri);
			int totalCount = boardService.getTotalCountAll(cri);
			PageMaker pm = pageMakerService.getPageMaker(5, cri, totalCount);
			model.addAttribute("pageMaker", pm);
			model.addAttribute("list", boardList);
			return "admin/board/list";
		}
		
		@RequestMapping(value="/board/update", method=RequestMethod.GET)
		public String adminBoardUpdateGet(Model model, Criteria cri, BoardVO bVo) {
			boardService.adminUpdateBoard(bVo);
			model.addAttribute("page", cri.getPage());
			return "redirect:/admin/board/list";
		}

}
