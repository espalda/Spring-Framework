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

import kr.green.plants.service.BoardService;
import kr.green.plants.utils.UploadFileUtils;
import kr.green.plants.vo.BoardVO;

@Controller
@RequestMapping(value="/board")
public class BoardController {
	
	@Autowired
	BoardService boardService;
	@Resource
	private String uploadPath;

	
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
		/* 첨부파일 등록 */
		@RequestMapping(value="/register", method=RequestMethod.POST)
		public String boardRegisterPost(Model model, BoardVO bvo, MultipartFile file2) throws IOException, Exception{
			if(file2.getOriginalFilename().length() != 0) {
				String file = UploadFileUtils.uploadFile(uploadPath, file2.getOriginalFilename(),file2.getBytes());
				bvo.setFile(file);
			}
			boardService.insertBoard(bvo);
			return "redirect:/board/list";
		}
		/* 서버에 파일 저장 */
		private String uploadFile(String name, byte[] data) throws Exception{
		    /* 고유한 파일명을 위해 UUID를 이용 */
			UUID uid = UUID.randomUUID();
			String savaName = uid.toString() + "_" + name;
			File target = new File(uploadPath, savaName);
			FileCopyUtils.copy(data, target);
			return savaName;
		}
		/* 파일 다운로드 */
		@ResponseBody
		@RequestMapping("download")
		public ResponseEntity<byte[]> downloadFile(String fileName)throws Exception{
		    InputStream in = null;
		    ResponseEntity<byte[]> entity = null;
		    try{
		        String FormatName = fileName.substring(fileName.lastIndexOf(".")+1);
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
		    return "redirect:/board/list";
		}
		
		/** 게시글 삭제 */
		@RequestMapping(value="/delete", method=RequestMethod.GET)
		public ModelAndView boardDeleteGet(ModelAndView mv, Integer num){
			boardService.deleteBoard(num);
			mv.setViewName("redirect:/board/list");
			return mv;
		}
		
	
}
