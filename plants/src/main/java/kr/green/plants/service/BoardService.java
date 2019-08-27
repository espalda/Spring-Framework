package kr.green.plants.service;

import java.util.ArrayList;

import kr.green.plants.vo.BoardVO;

public interface BoardService {

	public void insertBoard(BoardVO bvo);

	public ArrayList<BoardVO> selectBoard();

	public BoardVO getBoard(Integer num);

	public void updateViews(Integer num);

	public void deleteBoard(Integer num);






}
