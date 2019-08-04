package kr.green.test.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import kr.green.test.pagination.Criteria;
import kr.green.test.vo.BoardVO;

public interface BoardService {

	ArrayList<BoardVO> boardList(Criteria cri);

	BoardVO getBoard(Integer num);
	//외부에서 입력받은 게시글 번호가 주어지면 boardVO의 정보를 반환한다.

	boolean boardRegister(BoardVO board);

	void boardModify(BoardVO bVo);

	boolean isWriter(Integer num, HttpServletRequest r);

	void boardDelete(Integer num);

	int getTotalcount(Criteria cri);




}
