package kr.green.spring.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import kr.green.spring.vo.BoardVO;

@Service
public interface BoardService {

	ArrayList<BoardVO> getBoardList();

	BoardVO getBoard(Integer num);

	void updateViews(Integer num);

}
