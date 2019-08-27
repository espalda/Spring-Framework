package kr.green.plants.service;

import java.util.ArrayList;

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
	public ArrayList<BoardVO> getBoard() {
		return boardDao.getBoard();
	}
	
}
