package kr.green.plants.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.plants.dao.AdminDAO;
import kr.green.plants.vo.OrderVO;
@Service
public class AdminServiceImp implements AdminService{
	
	@Autowired
	AdminDAO adminDao;
	
		@Override
		public ArrayList<OrderVO> selectOrderList() {
			return adminDao.selectOrderList();
		}
	

}
