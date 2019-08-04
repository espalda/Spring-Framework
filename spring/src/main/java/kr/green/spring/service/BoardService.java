package kr.green.spring.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import kr.green.spring.pagination.Criteria;
import kr.green.spring.vo.BoardVO;

public interface BoardService {

	ArrayList<BoardVO> getBoardList(Criteria cri);
	ArrayList<BoardVO> getBoardListAll(Criteria cri);

	BoardVO getBoard(Integer num);

	void updateBoard(Integer num);

	void updateBoard(BoardVO bVo, HttpServletRequest r);

	void insertBoard(BoardVO bVo);

	void deleteBoard(Integer num);

	boolean isWriter(Integer num, HttpServletRequest r);

	int getTotalCount(Criteria cri);
	int getTotalCountAll(Criteria cri);
	void adminUpdateBoard(BoardVO bVo);



}