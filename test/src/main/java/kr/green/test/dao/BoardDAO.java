package kr.green.test.dao;

import java.util.ArrayList;

import kr.green.test.pagination.Criteria;
import kr.green.test.vo.BoardVO;

public interface BoardDAO {

	ArrayList<BoardVO> getBoardListDB(Criteria cri);

	BoardVO getBoardDB(Integer num);

	void boardRegisterDB(BoardVO board);

	void boardModifyDB(BoardVO bVo);

	void boardDeleteDB(Integer num);

	int getTotalCount(Criteria cri);

	


}
