package kr.green.test.pagination;

import java.util.List;

import kr.green.test.vo.BoardVO;

public interface boardMapper {
		//... 이전 메소드 생략
		public List<BoardVO> listPage(Criteria cri); 
	    public int countBoard();
	    
}