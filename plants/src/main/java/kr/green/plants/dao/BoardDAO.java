package kr.green.plants.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.plants.vo.BoardVO;

public interface BoardDAO {

	public ArrayList<BoardVO> selectBoardListId(@Param("id") String id);

	public BoardVO selectBoardNum(@Param("num") Integer num);

	public void insertBoard(@Param("board") BoardVO board);
	
	public void updateBoard(@Param("board") BoardVO board);

	public void deleteBoard(@Param("num") Integer num);

	



}
