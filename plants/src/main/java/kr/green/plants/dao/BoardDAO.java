package kr.green.plants.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.plants.pagination.Criteria;
import kr.green.plants.vo.BoardVO;

public interface BoardDAO {

	public ArrayList<BoardVO> selectBoardListId(@Param("id") String id);

	public BoardVO selectBoardNum(@Param("num") Integer num);

	public void insertBoard(@Param("board") BoardVO board);
	
	public void updateBoard(@Param("board") BoardVO board);

	public void deleteBoard(@Param("num") Integer num);

	public int selectBoardCount(@Param("cri")Criteria cri, @Param("valid") String valid);

	public ArrayList<BoardVO> selectBoardList(@Param("cri") Criteria cri, @Param("valid") String valid);

	



}
