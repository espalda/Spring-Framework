package kr.green.spring.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

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
import kr.green.spring.vo.BoardVO;

@Controller
@RequestMapping(value="/board")
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	BoardService boardService;
		
		/** 게시판 목록 */
		@RequestMapping(value="/list", method=RequestMethod.GET)
		public String boardListGet(Model model, Criteria cri) {
			logger.info("Criteria");
			cri.setPerPageNum(5); //보이는 페이지 개수
			
			ArrayList<BoardVO> boardList = boardService.getBoardList(cri);
			PageMaker pm = new PageMaker();
			System.out.println(cri);
			
			//pm의 현재 페이지 정보 설정
			pm.setCriteria(cri);
			//pm의 displayPageNum 설정
			pm.setDisplayPageNum(5);	//아래 페이지 개수 리스트
			//pm의 총 게시글 수 설정
			int totalCount = boardService.getTotalCount(cri);
			pm.setTotalCount(totalCount);
			
			model.addAttribute("pageMaker", pm);
			model.addAttribute("list", boardList);
		return "board/list";	
		}
		
		
		/** 게시글 확인  */
		@RequestMapping(value="/display", method=RequestMethod.GET)	//value는 uri 경로 설정, method는 get방식인지 post방식인지 설정하는것
		public String boardDisplayGet(Model model, Integer num) {	//매개변수로  홈페이지의 객체인 model과 게시판 번호를 입력받으면 boardDisplayGet 메서드를 실행하겠다
			boardService.updateViews(num);	//조회수를 증가 시키는 서비스 추가
			BoardVO bVo = boardService.getBoard(num);	//매개변수 num을 사용해서 VO객체를 반환하는 메서드 getBoard를 호출하여 bVo에 저장
			model.addAttribute("board", bVo);	//board 변수에 bVo객체 정보를 넣겠다
			return "board/display";
		}
		
		
		/** 게시글 수정 */
		@RequestMapping(value="/modify", method=RequestMethod.GET)	//수정전 내용을 화면에 뿌려주는 URI와 GET방식 설정
		public String boardUpdateModifyGet(Model model, Integer num, HttpServletRequest r) {
			if(!boardService.isWriter(num, r)) {	//작성자인지 아닌지 확인하는 메서드를 서비스에 생성
				return "redirect:/board/list";
			}
			
			BoardVO bVo = boardService.getBoard(num);
			model.addAttribute("board", bVo);
			return "board/modify";	
		}
		
		@RequestMapping(value="/modify", method=RequestMethod.POST)
		//HttpServletRequest r 로그인한 사람이 작성자인지 아닌지 확인하기 위해서 
		public String boardUpdateModifyPost(Model model, BoardVO bVo, HttpServletRequest r) {
			boardService.updateBoard(bVo, r);
			model.addAttribute("num", bVo.getNum());
			return "redirect:/board/display";
		}
		
		
		/** 게시글 등록 */
		@RequestMapping(value="/register", method=RequestMethod.GET)
		public String boardRegisterGET(Model model) {
			return "board/register";
		}
		
		@RequestMapping(value="/register", method=RequestMethod.POST)
		public String boardRegisterPost(Model model, BoardVO bVo) {
			boardService.insertBoard(bVo);
			return "redirect:/board/list";
		}
		
		
		/** 게시글 삭제 */
		@RequestMapping(value="/delete", method=RequestMethod.GET)
		public String boardDeleteGET(Model model, Integer num, HttpServletRequest r) {
			
			if(boardService.isWriter(num, r)) {			
			boardService.deleteBoard(num);
			}
			return "redirect:/board/list";
			//redirect 없이 그냥  board/list 이면 삭제했던 페이지의 uri에 머무르고
			//redirect를 붙이면 바로 list 페이지로 들어간다.
		}
}