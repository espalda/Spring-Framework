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

import kr.green.plants.service.BoardService;
import kr.green.plants.vo.BoardVO;

@Controller
@RequestMapping(value="/board")
public class BoardController {
	
	@Autowired
	BoardService boardService;
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
		
		/** 게시글 리스트 + 페이지네이션 */
		@RequestMapping(value="/list")
		public ModelAndView openTilesView0(ModelAndView mv){
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
		public ModelAndView boardRegisterPost(ModelAndView mv, BoardVO bvo){
			boardService.insertBoard(bvo);
			mv.setViewName("redirect:/board/list");
			return mv;
		}
		
		/** 게시글 수정 */
		@RequestMapping(value="/modify", method=RequestMethod.GET)
		public ModelAndView boardModifyGet(ModelAndView mv, Integer num){
			System.out.println("게시글수정 번호 :" + num);
		    mv.setViewName("/board/modify");
		    return mv;
		}
		@RequestMapping(value="/modify", method=RequestMethod.POST)
		public ModelAndView boardModifyPost(ModelAndView mv, BoardVO bvo){
			System.out.println("게시글수정 내용 :" + bvo);
			boardService.getBoard(bvo.getNum());
		    mv.setViewName("redirect:/board/display");
		    mv.addObject("board", bvo);
		    return mv;
		}
		
		/** 게시글 삭제 */
		@RequestMapping(value="/delete", method=RequestMethod.GET)
		public ModelAndView boardDeleteGet(ModelAndView mv, Integer num){
			boardService.deleteBoard(num);
			mv.setViewName("redirect:/board/list");
			return mv;
		}
		
	
}
