package kr.green.plants.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.plants.dao.ItemDAO;
import kr.green.plants.vo.ItemVO;

@Service
public class ItemServiceImp implements ItemService{

	@Autowired
	ItemDAO itemDao;

		@Override
		public void insertItem(ItemVO ivo) {
			itemDao.insertItem(ivo);
		}
	
		@Override
		public ArrayList<ItemVO> selectItem() {
			return itemDao.selectItem();
		}

}
