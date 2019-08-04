package kr.green.test.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.green.test.pagination.Criteria;
import kr.green.test.pagination.PageMaker;
import kr.green.test.service.BoardService;
import kr.green.test.vo.BoardVO;

@Controller
@RequestMapping(value="/board")
public class BoardController {

	@Autowired
	BoardService boardService;
		
		/** 페이지네이션 & 게시판 리스트 */
		@RequestMapping(value="list", method=RequestMethod.GET)
		public String boardListGet(Model model, Criteria cri) {
			//cri.setPerPageNum(2);	현재화면에 보여주는 게시글의 개수
			ArrayList<BoardVO> list = boardService.boardList(cri);
		    PageMaker pm = new PageMaker();
		    pm.setDisplayPageNum(5);	//페이지네이션의 개수 설정하는 역할
		    pm.setCriteria(cri);		//현재 페이지에 대한 정보
		    int totalCount = boardService.getTotalcount(cri);
		    pm.setTotalCount(totalCount);
		    
		    model.addAttribute("pageMaker", pm);
		    model.addAttribute("list", list);
		    return "/board/list";
		}

		/** 게시글 구현 */
		@RequestMapping(value="/display", method=RequestMethod.GET)	//uri의 경로를 설정
		public String boardDisplayGet(Model model, Integer num, Criteria cri){
			//boardService.updateViews(num);
			BoardVO bVo = boardService.getBoard(num);	//boardservice에 boardcontents라는 메서드에 num을 넘겨준다
			System.out.println(bVo); //ToString 객체정보를 문자열로 받아온다.
			model.addAttribute("board", bVo);
			model.addAttribute("cri", cri);
			return "board/display";
		}
		
		
		/** 게시글 등록 기능 */
		@RequestMapping(value="/register", method=RequestMethod.GET)
		public String boardRegisterGet(Model model) {
			return "board/register";
		}
		
		@RequestMapping(value="/register", method=RequestMethod.POST)
		public String boardRegisterPost(Model model, BoardVO board) {
			boardService.boardRegister(board);
		
			return "redirect:/board/list";
		}
		
		
		/** 게시글 수정 기능 */
		@RequestMapping(value="/modify", method=RequestMethod.GET)
		public String boardModifyGet(Model model, Integer num, HttpServletRequest r) {
				//널값을 처리하기 위해서 int가 아닌 integer로 처리
			if(!boardService.isWriter(num, r)) {	//일치하지 않으면 게시글 리스트로 돌아간다.
				model.addAttribute("num", num);
				return "redirect:/board/list";
			}
			BoardVO board = boardService.getBoard(num);
			model.addAttribute("board", board);
			
			return "board/modify";
		}
		
		@RequestMapping(value="/modify", method=RequestMethod.POST)
		public String boardModifyPost(Model model, BoardVO bVo) {
			boardService.boardModify(bVo);
			model.addAttribute("board", bVo);
			System.out.println(bVo);
		
			return "redirect:/board/list";
		}
		
		
		/** 게시글 삭제 기능 */
		@RequestMapping(value="/delete", method=RequestMethod.GET)
		public String boardDeleteGet(Model model, Integer num, HttpServletRequest r) {
			if(boardService.isWriter(num, r)) {
				boardService.boardDelete(num);
			}
			return "redirect:/board/list";
		}
		
		
		
	
}