package kr.green.spring.dao;

import java.util.ArrayList;

import kr.green.spring.pagination.Criteria;
import kr.green.spring.vo.BoardVO;

public interface BoardDAO {

	public ArrayList<BoardVO> getBoardList(Criteria cri);
	
	public ArrayList<BoardVO> getBoardListAll(Criteria cri);

	public BoardVO getBoard(Integer num);

	public void updateBoardDB(BoardVO tmp);

	public void insertBoardDB(BoardVO bVo);

	public void deleteBoardDB(Integer num);

	public int getTotalCountDB(Criteria cri);
	
	public int getTotalCountAll(Criteria cri);

	public void adminUpdateBoard(BoardVO bVo);


	
}
