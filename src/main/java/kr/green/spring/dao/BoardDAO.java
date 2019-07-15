package kr.green.spring.dao;

import java.util.ArrayList;

import kr.green.spring.vo.BoardVO;

public interface BoardDAO {

	ArrayList<BoardVO> getBoardList();

	BoardVO getBoard(Integer num);

	void updateViewsDB(Integer num);

	void updateBoardDB(BoardVO tmp);

	void insertBoardDB(BoardVO bVo);

	void deleteBoardDB(Integer num);

	
}
