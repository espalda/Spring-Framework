package kr.green.plants.service;


import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.plants.dao.BoardDAO;
import kr.green.plants.pagination.Criteria;
import kr.green.plants.vo.BoardVO;

@Service
public class BoardServiceImp implements BoardService {
	
	@Autowired
	BoardDAO boardDao;

		@Override
		public ArrayList<BoardVO> selectBoardListId(String id) {
			if(id == null)	return null;
			return boardDao.selectBoardListId(id);
		}
		
		@Override
		public BoardVO selectBoardNum(Integer num) {
			if(num == null) return null;
			return boardDao.selectBoardNum(num);
			
		}

		@Override
		public void insertBoard(BoardVO bvo) {
			boardDao.insertBoard(bvo);
		}
		
		@Override
		public void updateViews(Integer num) {
			BoardVO board = boardDao.selectBoardNum(num);
			int views = board.getViews();
			board.setViews(views + 1);
			boardDao.updateBoard(board);
		}
		
		@Override
		public void updateBoard(BoardVO bvo) {
			if(bvo == null) return;
			boardDao.updateBoard(bvo);	
		}
	
		@Override
		public void deleteBoard(Integer num) {
			boardDao.deleteBoard(num);
		}

		@Override
		public int selectBoardCount(Criteria cri, String valid) {
			return boardDao.selectBoardCount(cri,valid);
		}

		@Override
		public ArrayList<BoardVO> selectBoardList(Criteria cri, String valid) {
			return boardDao.selectBoardList(cri, valid);
		}

}
