package kr.green.test.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

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
		public ModelAndView boardListGet(ModelAndView mv, Criteria cri){
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
		

		@RequestMapping(value= "/board/register", method=RequestMethod.GET)
		public ModelAndView boardRegisterGet(ModelAndView mv, Criteria cri){
		    mv.setViewName("/board/register");
		    return mv;
		}
		
		@RequestMapping(value= "/board/register", method=RequestMethod.POST)
		public String boardRegisterPost(BoardVO bVo){
			boardService.registerBoard(bVo);
		    return "redirect:/board/list";
		}
		
		
		
		@RequestMapping(value= "/board/display", method=RequestMethod.GET)
		public ModelAndView boardDisplayGet(ModelAndView mv, Integer num, Criteria cri){
			BoardVO board = boardService.getBoard(num);
		    mv.setViewName("/board/display");
		    mv.addObject("board", board);
		    mv.addObject("cri", cri);
		    return mv;
		}
		
		
		@RequestMapping(value= "/board/modify", method=RequestMethod.GET)
		public ModelAndView boardModifyGet(ModelAndView mv, Integer num ,Criteria cri, HttpServletRequest r){
			//HttpServletRequest r 수정 작업이 일어나기 전에 세션에 있는 로그인 정보를 가져오기 위해서
			boolean isWriter = boardService.isWriter(num, r);
			BoardVO board = null;
			if(isWriter) {
				board = boardService.getBoard(num);
			    mv.setViewName("/board/modify");
			}else {
				mv.setViewName("redirect:/board/list");
			}
		
		    mv.addObject("board", board);
		    mv.addObject("cri", cri);
		    return mv;
		}
		
		@RequestMapping(value= "/board/modify", method=RequestMethod.POST)
		public String boardModifyPost(BoardVO bVo){
			boardService.modifyBoard(bVo);
		    return "redirect:/board/list";
		}
}
