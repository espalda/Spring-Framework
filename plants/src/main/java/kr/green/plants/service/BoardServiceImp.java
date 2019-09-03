package kr.green.plants.service;


import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.plants.dao.BoardDAO;
import kr.green.plants.vo.BoardVO;

@Service
public class BoardServiceImp implements BoardService {
	
	@Autowired
	BoardDAO boardDao;

		@Override
		public void insertBoard(BoardVO bvo) {
			boardDao.insertBoard(bvo);
		}
	
		@Override
		public ArrayList<BoardVO> selectBoard() {
			return boardDao.selectBoard();
		}
	
		@Override
		public BoardVO getBoard(Integer num) {
			if(num == null) return null;
			return boardDao.getBoard(num);
			
		}
	
		@Override
		public void updateViews(Integer num) {
			BoardVO board = boardDao.getBoard(num);
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

		


}
