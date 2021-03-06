package kr.green.spring.controller;


import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.green.spring.pagination.Criteria;
import kr.green.spring.pagination.PageMaker;
import kr.green.spring.service.BoardService;
import kr.green.spring.service.PageMakerService;
import kr.green.spring.utils.UploadFileUtils;
import kr.green.spring.vo.BoardVO;

@Controller
@RequestMapping(value="/board")
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	BoardService boardService;
	@Autowired
	PageMakerService pageMakerService;
	@Resource
	private String uploadPath;

		
		/** 페이지네이션 */
		@RequestMapping(value="/list", method=RequestMethod.GET)
		public String boardListGet(Model model, Criteria cri) {
			cri.setPerPageNum(5); // 화면에 보여지는 리스트 개수
			ArrayList<BoardVO> boardList = boardService.getBoardList(cri);
			int totalCount = boardService.getTotalCount(cri);
			PageMaker pm = pageMakerService.getPageMaker(5, cri, totalCount);
			model.addAttribute("pageMaker", pm);
			model.addAttribute("list", boardList);
		return "board/list";	
		}
		
		
		/** 게시글 확인  */
		@RequestMapping(value="/display", method=RequestMethod.GET)	//value는 uri 경로 설정, method는 get방식인지 post방식인지 설정하는것
		public String boardDisplayGet(Model model, Integer num) {	//매개변수로  홈페이지의 객체인 model과 게시판 번호를 입력받으면 boardDisplayGet 메서드를 실행하겠다
			boardService.updateBoard(num);	//조회수를 증가 시키는 서비스 추가
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
		public String boardUpdateModifyPost(Model model, BoardVO bVo, HttpServletRequest r, MultipartFile file2)  throws IOException, Exception {
			if(file2.getOriginalFilename().length() != 0) {
				String file = UploadFileUtils.uploadFile(uploadPath, file2.getOriginalFilename(), file2.getBytes());
				bVo.setFile(file);	//파일명을 서버에 전송
			}
			//첨부파일에 추가한 파일이 없는 경우
			else {
				if(bVo.getFile().length() == 0) {
					bVo.setFile("");
				}else {
				BoardVO tmp = boardService.getBoard(bVo.getNum());
				bVo.setFile(tmp.getFile());
				}
			}
			
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
		public String boardRegisterPost(Model model, BoardVO bVo, MultipartFile file2) throws IOException, Exception {
			if(file2.getOriginalFilename().length() != 0) {
				String file = UploadFileUtils.uploadFile(uploadPath, file2.getOriginalFilename(), file2.getBytes());
				bVo.setFile(file);	//파일명을 서버에 전송
			}
			boardService.insertBoard(bVo);
			return "redirect:/board/list";
		}
		
		
		/** 업로드된 파일 다운로드 테스트 */
		@ResponseBody
		@RequestMapping("/download")
		public ResponseEntity<byte[]> downloadFile(String fileName)throws Exception{
		    InputStream in = null;
		    ResponseEntity<byte[]> entity = null;
		    try{
		        HttpHeaders headers = new HttpHeaders();
		        in = new FileInputStream(uploadPath+fileName);

		        fileName = fileName.substring(fileName.indexOf("_")+1);
		        headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
		        headers.add("Content-Disposition",  "attachment; filename=\"" 
					+ new String(fileName.getBytes("UTF-8"), "ISO-8859-1")+"\"");
		        entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in),headers,HttpStatus.CREATED);
		    }catch(Exception e) {
		        e.printStackTrace();
		        entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
		    }finally {
		        in.close();
		    }
		    return entity;
		}
		
		
		/** 게시글 삭제 */
		@RequestMapping(value="/delete", method=RequestMethod.GET)
		public String boardDeleteGET(Model model, Integer num, HttpServletRequest r) {
			
			if(boardService.isWriter(num, r)) {			
			boardService.deleteBoard(num);
			}
			return "redirect:/board/list";
			//그냥  board/list 이면 삭제했던 페이지의 uri에 머무르고
			//redirect를 붙이면 바로 list 페이지로 들어간다.
		}
}