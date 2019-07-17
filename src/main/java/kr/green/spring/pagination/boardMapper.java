package kr.green.spring.pagination;

import java.util.List;

import kr.green.spring.vo.BoardVO;

public interface boardMapper {

	//... 이전 메소드 생략
	public List<BoardVO> listPage(Criteria cri); 
    public int countBoard();
	
}
