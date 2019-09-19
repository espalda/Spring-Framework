package kr.green.plants.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import kr.green.plants.vo.BoardVO;

public interface BoardService {

	public ArrayList<BoardVO> selectBoardListId(String id);
	
	public BoardVO selectBoardNum(Integer num);
	
	public void insertBoard(BoardVO bvo);
	
	public void updateViews(Integer num);
	
	public void updateBoard(BoardVO bvo);

	public void deleteBoard(Integer num);

}
