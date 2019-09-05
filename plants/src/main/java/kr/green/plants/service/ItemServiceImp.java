package kr.green.plants.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.plants.dao.ItemDAO;
import kr.green.plants.vo.ItemVO;
import kr.green.plants.vo.OptionVO;

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

		@Override
		public ItemVO getItem(Integer num) {
			return itemDao.getItem(num);
		}

		@Override
		public ArrayList<ItemVO> selectNewItem() {
			return itemDao.selectNewItem();
		}

		@Override
		public void insertOption(OptionVO ovo) {
			if(ovo == null) {
				return;
			}
			itemDao.insertItemOption(ovo);
			
		}

		@Override
		public ArrayList<OptionVO> selectOption() {
			return itemDao.selectOption();
		}

		@Override
		public ArrayList<OptionVO> getOption(String name) {
			return itemDao.getOption(name);
		}

}
