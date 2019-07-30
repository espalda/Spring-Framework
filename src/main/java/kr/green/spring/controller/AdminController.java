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
import kr.green.spring.service.MemberService;
import kr.green.spring.service.PageMakerService;
import kr.green.spring.vo.MemberVO;

@Controller
@RequestMapping(value="/admin")
public class AdminController {
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	PageMakerService pageMakerService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
		@RequestMapping(value="/user/list", method=RequestMethod.GET)
		public String adminUserListGet(Model model, Criteria cri) {
			logger.info("페이지네이션 관리자 회원 관리 리스트");
			cri.setPerPageNum(2);
			ArrayList<MemberVO> memberList = memberService.getAllMember(cri);
			new PageMaker();
			int totalCount = memberService.getTotalCount();
			
			PageMaker pm = pageMakerService.getPageMaker(5, cri, totalCount);
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

}
