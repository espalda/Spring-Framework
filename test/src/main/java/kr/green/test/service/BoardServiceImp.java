package kr.green.test.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.test.dao.BoardDAO;
import kr.green.test.pagination.Criteria;
import kr.green.test.vo.BoardVO;
import kr.green.test.vo.MemberVO;

@Service
public class BoardServiceImp implements BoardService{

	@Autowired
	BoardDAO boardDao;
	
		@Override
		public ArrayList<BoardVO> boardList(Criteria cri) {
			//외부에서 정보를 받자 마자 바로 다오에게 전달
			return boardDao.getBoardListDB(cri);
		}
	
		@Override
		public BoardVO getBoard(Integer num) {
			//번호가 없으면 또는 유효하지 않은 번호이면
			if(num == null)		return null;
			else if(num <= 0)	return null;
				return boardDao.getBoardDB(num);
			//DAO에게 번호를 알려주면서 이 번호와 일치하는 정보를 가져오라고 리턴함
		}
	
		@Override
		public boolean boardRegister(BoardVO board) {
			boardDao.boardRegisterDB(board);
			return false;
		}

		@Override
		public void boardModify(BoardVO bVo) {
			boardDao.boardModifyDB(bVo);
			
		}

		
		@Override
		public boolean isWriter(Integer num, HttpServletRequest r) {
			BoardVO bVo = boardDao.getBoardDB(num);	//게시글 하나 가져와서 bVo에 저장하는 역할
			MemberVO mVo = (MemberVO) r.getSession().getAttribute("user");	//세션에 있는 로그인 정보를 형변환해서 가져오는 역할
			if(bVo != null && mVo != null && bVo.getWriter().equals(mVo.getId())) {
				return true;
			}
			return false;
		}

		
		@Override
		public void boardDelete(Integer num) {
			if(num == null || num <0) return;
			boardDao.boardDeleteDB(num);
			
		}

		@Override
		public int getTotalcount(Criteria cri) {
			// TODO Auto-generated method stub
			return boardDao.getTotalCount(cri);
		}
	


}
