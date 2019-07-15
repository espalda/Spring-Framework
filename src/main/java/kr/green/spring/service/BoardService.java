package kr.green.spring.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import kr.green.spring.vo.BoardVO;

@Service
public interface BoardService {

	ArrayList<BoardVO> getBoardList();

	BoardVO getBoard(Integer num);

	void updateViews(Integer num);

	void updateBoard(BoardVO bVo, HttpServletRequest r);

	void insertBoard(BoardVO bVo);

	void deleteBoard(Integer num);

	boolean isWriter(Integer num, HttpServletRequest r);

	


}
