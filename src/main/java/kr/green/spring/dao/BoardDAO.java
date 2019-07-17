package kr.green.spring.dao;

import java.util.ArrayList;

import kr.green.spring.pagination.Criteria;
import kr.green.spring.vo.BoardVO;

public interface BoardDAO {

	ArrayList<BoardVO> getBoardList(Criteria cri);

	BoardVO getBoard(Integer num);

	void updateViewsDB(Integer num);

	void updateBoardDB(BoardVO tmp);

	void insertBoardDB(BoardVO bVo);

	void deleteBoardDB(Integer num);

	int getTotalCountDB(Criteria cri);

	
}
