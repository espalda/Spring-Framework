package kr.green.test.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.green.test.pagination.Criteria;
import kr.green.test.pagination.PageMaker;
import kr.green.test.service.BoardService;
import kr.green.test.service.PageMakerService;
import kr.green.test.vo.BoardVO;

@Controller
public class BoardController {
	
	@Autowired
	BoardService boardService;
	@Autowired
	PageMakerService pageMakerService;
	
		@RequestMapping(value= "/board/list", method=RequestMethod.GET)
		public ModelAndView boardListGet(ModelAndView mv, Criteria cri) throws Exception{
			String valid = "I";
			int displayPageNum = 5;
			cri.setPerPageNum(5);
			ArrayList<BoardVO> list = boardService.getBoardList(cri,valid);
			int totalCount = boardService.getTotalCount(cri,valid);
			PageMaker pm = pageMakerService.getPageMaker(displayPageNum, cri, totalCount);
		    mv.setViewName("/board/list");
			mv.addObject("list", list);
			mv.addObject("pageMaker", pm);
		    return mv;
		}
		

	
}
