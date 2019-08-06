package kr.green.spring.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import kr.green.spring.pagination.Criteria;
import kr.green.spring.vo.BoardVO;

public interface BoardService {

	public ArrayList<BoardVO> getBoardList(Criteria cri);
	public ArrayList<BoardVO> getBoardListAll(Criteria cri);

	public BoardVO getBoard(Integer num);

	public void updateBoard(Integer num);

	public void updateBoard(BoardVO bVo, HttpServletRequest r);

	public void insertBoard(BoardVO bVo);

	public void deleteBoard(Integer num);

	public boolean isWriter(Integer num, HttpServletRequest r);

	public int getTotalCount(Criteria cri);
	public int getTotalCountAll(Criteria cri);
	public void adminUpdateBoard(BoardVO bVo);



}
