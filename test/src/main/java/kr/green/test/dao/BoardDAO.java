package kr.green.test.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.test.pagination.Criteria;
import kr.green.test.vo.BoardVO;

public interface BoardDAO {
	
	public ArrayList<BoardVO> selectBoardList(@Param("cri")Criteria cri, @Param("valid")String valid);
	//Param 매개변수가 2개일 때 처리하기 위해서

	public int selectCountBoardList(@Param("cri")Criteria cri, @Param("valid")String valid);

}
