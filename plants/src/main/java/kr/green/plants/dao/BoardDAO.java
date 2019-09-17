package kr.green.plants.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.plants.vo.BoardVO;

public interface BoardDAO {

	public void insertBoard(@Param("board") BoardVO board);

	public ArrayList<BoardVO> selectBoard();

	public BoardVO getBoard(@Param("num") Integer num);

	public void updateBoard(@Param("board") BoardVO board);

	public void deleteBoard(@Param("num") Integer num);

	public ArrayList<BoardVO> selectBoard2(@Param("id") String id);



}
