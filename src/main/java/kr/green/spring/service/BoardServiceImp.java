package kr.green.spring.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.spring.dao.BoardDAO;
import kr.green.spring.vo.BoardVO;

@Service
public class BoardServiceImp implements BoardService {

	@Autowired
	BoardDAO boardDao;
	
	@Override
	public ArrayList<BoardVO> getBoardList() {
	
		return boardDao.getBoardList();
	}

	@Override
	public BoardVO getBoard(Integer num) {
	
		
		if(num == null)
			return null;
		
		return boardDao.getBoard(num);
	}

	@Override
	public void updateViews(Integer num) {
		//boardDao.updateViewsDB(num);
		//updateViewDB는 view의 갯수만 하나씩 증가시키는 기능이고
		//updateBoardDB는 수정한 내용들을 변경시키는 기능, 서비스에서 view 를 증가시키는 기능을 구현한채로 DB에 업데이트 하라고 넘겨준다
		BoardVO tmp = boardDao.getBoard(num);
		if(tmp != null) {
			int oldViews = tmp.getViews();
			tmp.setViews(oldViews + 1);
			boardDao.updateBoardDB(tmp);
		}
	}

}