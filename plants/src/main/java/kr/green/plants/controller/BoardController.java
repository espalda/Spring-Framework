package kr.green.plants.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.UUID;

import javax.annotation.Resource;

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
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.green.plants.pagination.Criteria;
import kr.green.plants.pagination.PageMaker;
import kr.green.plants.service.AdminService;
import kr.green.plants.service.BoardService;
import kr.green.plants.service.PageMakerService;
import kr.green.plants.utils.UploadFileUtils;
import kr.green.plants.vo.BoardVO;

@Controller
@RequestMapping(value="/board")
public class BoardController {
	
	@Autowired
	BoardService boardService;
	@Autowired
	AdminService adminService;
	@Autowired
	PageMakerService pageMakerService;
	@Resource
	private String uploadPath;

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
		/* isWriter 구현 */
		/* Pagination */
		/** 게시글 리스트 */
		@RequestMapping(value="/list")
		public ModelAndView boardListGet(ModelAndView mv, Criteria cri){
			String valid = "I";
			int displayPageNum = 3;
			cri.setPerPageNum(7);
			ArrayList<BoardVO> list = boardService.selectBoardList(cri,valid);
			int totalCount = boardService.selectBoardCount(cri,valid);
			PageMaker pm = pageMakerService.getPageMaker(displayPageNum, cri, totalCount);
		    mv.setViewName("/board/list");
		    mv.addObject("boardList", list);
		    mv.addObject("pageMaker", pm);
		    return mv;
		}
		
		
		/** 게시글 상세 + 조회수 증가 */
		@RequestMapping(value="/display", method=RequestMethod.GET)
		public ModelAndView boardDisplayGet(ModelAndView mv, Integer num){
			boardService.updateViews(num);	/** 함수 기능 */
			BoardVO bvo = boardService.selectBoardNum(num);
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
		/** 첨부파일 등록 */
		@RequestMapping(value="/register", method=RequestMethod.POST)
		public String boardRegisterPost(Model model, BoardVO bvo, MultipartFile file2) throws IOException, Exception{
			if(file2.getOriginalFilename().length() != 0) {
				String file = UploadFileUtils.uploadFile(uploadPath, file2.getOriginalFilename(),file2.getBytes());
				bvo.setFile(file);
			}
			boardService.insertBoard(bvo);
			return "redirect:/board/list";
			/* display로 돌아갈때 게시글 번호 추가 해서 다시 돌아가게 하는 기능 추가 */
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
		/** 파일 다운로드 */
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

		/* 게시글 작성자만 수정할수 있게 하는 기능 */
		/** 게시글 수정 */
		@RequestMapping(value="/modify", method=RequestMethod.GET)	/* 기존에 내용 불러오기 */
		public ModelAndView boardModifyGet(ModelAndView mv, Model model, Integer num){
			BoardVO bvo = boardService.selectBoardNum(num);
		    model.addAttribute("board", bvo);
		    mv.setViewName("/board/modify");
		    return mv;
		}
		/** 게시글 수정 + 첨부파일 수정 */
		@RequestMapping(value="/modify", method=RequestMethod.POST)
		public String boardModifyPost(Model model, BoardVO bvo, MultipartFile file2)throws IOException, Exception{
			System.out.println(bvo);
			if(file2.getOriginalFilename().length() != 0) {
				String file = UploadFileUtils.uploadFile(uploadPath, file2.getOriginalFilename(), file2.getBytes());
				System.out.println("boardModifyPost file : "+file);
				bvo.setFile(file);	/* 파일명을 서버에 전송 */
				System.out.println("boardModifyPost if : "+bvo);
			}
			/** 첨부파일에 추가한 파일이 없는 경우 */
		/*	else {
				if(bvo.getFile().length() == 0) {
					bvo.setFile("");
					System.out.println("boardModifyPost else if : "+bvo);
			       }else {
				    BoardVO tmp = boardService.selectBoardNum(bvo.getNum());
					bvo.setFile(tmp.getFile());
					System.out.println("boardModifyPost else else : "+tmp);
				   }
			} */
			boardService.updateBoard(bvo);
			model.addAttribute("num", bvo.getNum());
		    return "redirect:/board/list";
		}
		
		/* 게시글 작성자만 삭제할 수 있는 기능 */
		/** 게시글 삭제 */
		@RequestMapping(value="/delete", method=RequestMethod.GET)
		public ModelAndView boardDeleteGet(ModelAndView mv, Integer num){
			boardService.deleteBoard(num);
			mv.setViewName("redirect:/board/list");
			return mv;
		}
		
	
}
