package kr.green.plants.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.plants.dao.AdminDAO;
import kr.green.plants.vo.BoardVO;
import kr.green.plants.vo.ItemVO;
import kr.green.plants.vo.MemberVO;
import kr.green.plants.vo.OptionVO;
import kr.green.plants.vo.OrderVO;
import kr.green.plants.vo.SellerVO;
@Service
public class AdminServiceImp implements AdminService{
	
	@Autowired
	AdminDAO adminDao;

		@Override
		public ArrayList<SellerVO> selectSellerList() {
			return adminDao.selectSellerList();
		}

		@Override
		public void insertSeller(SellerVO svo) {
			adminDao.insertSeller(svo);	
		}
		
		@Override
		public ArrayList<MemberVO> selectMemberList() {
			return adminDao.selectMemberList();
		}

		@Override
		public ArrayList<ItemVO> selectItemList() {
			return adminDao.selectItemList();
		}

		@Override
		public ArrayList<OptionVO> selectOptionList() {
			return adminDao.selectOptionList();
		}
		
		@Override
		public Integer insertItem(ItemVO ivo) {
			adminDao.insertItem(ivo);		
			return adminDao.selectRegisteredItemNum();
		}

		@Override
		public void insertOption(OptionVO ovo) {
			if(ovo == null) {
				return;
			}
			adminDao.insertOption(ovo);	
		}

		@Override
		public ArrayList<OrderVO> selectOrderList() {
			return adminDao.selectOrderList();
		}

		@Override
		public ArrayList<BoardVO> selectBoardList() {
			return adminDao.selectBoardList();
		}
	

}
