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
import kr.green.plants.vo.BoardVO;

@Controller
@RequestMapping(value="/board")
public class BoardController {
	
	@Autowired
	BoardService boardService;
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
		/* isWriter 구현 + pagenation */
		/** 게시글 리스트 */
		@RequestMapping(value="/list")
		public ModelAndView boardListGet(ModelAndView mv){
			ArrayList<BoardVO> board = boardService.selectBoard();
		    mv.setViewName("/board/list");
		    mv.addObject("boardList", board);
		    return mv;
		}
		
		/** 게시글 상세 + 조회수 증가 */
		@RequestMapping(value="/display", method=RequestMethod.GET)
		public ModelAndView boardDisplayGet(ModelAndView mv, Integer num){
			boardService.updateViews(num);
			BoardVO bvo = boardService.getBoard(num);
		    mv.setViewName("/board/display");
		    mv.addObject("board", bvo);
		    return mv;
		}

		
		/** 게시글 등록 */
		@RequestMapping(value="/register", method=RequestMethod.GET)
		public ModelAndView boardRegisterGet(ModelAndView mv){
		    mv.setViewName("/board/register");
		    return mv;
		}
		@RequestMapping(value="/register", method=RequestMethod.POST)
		public String boardRegisterPost(Model model, BoardVO bvo){
			boardService.insertBoard(bvo);
			return "redirect:/board/list";
		}
		
		/** 게시글 수정 */
		@RequestMapping(value="/modify", method=RequestMethod.GET)	/* 기존에 내용 불러오기 */
		public String boardModifyGet(ModelAndView mv, Model model, Integer num){
		/*
		 * if(!boardService.isWriter(num, r)) , HttpServletRequest r return
		 * "redirect:/board/list";
		 */
			BoardVO bvo = boardService.getBoard(num);
		    model.addAttribute("board", bvo);
		    return "redirect:/board/modify";
		}
		@RequestMapping(value="/modify", method=RequestMethod.POST)	/* 화면에서 입력한 내용 DB에 저장 */
		public String boardModifyPost(Model model, BoardVO bvo){
			boardService.updateBoard(bvo);
			model.addAttribute("num", bvo.getNum());
		    return "redirect:/board/display";
		}
		
		/** 게시글 삭제 */
		@RequestMapping(value="/delete", method=RequestMethod.GET)
		public ModelAndView boardDeleteGet(ModelAndView mv, Integer num){
			boardService.deleteBoard(num);
			mv.setViewName("redirect:/board/list");
			return mv;
		}
		
	
}
