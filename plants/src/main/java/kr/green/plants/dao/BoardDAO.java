package kr.green.plants.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.plants.pagination.Criteria;
import kr.green.plants.vo.BoardVO;

public interface BoardDAO {

	public ArrayList<BoardVO> getBoard();

	public int getTotalCount();


}
