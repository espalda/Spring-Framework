package kr.green.plants.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.plants.dao.ItemDAO;
import kr.green.plants.vo.ItemVO;

@Service
public class ItemServiceImp implements ItemService{

	@Autowired
	ItemDAO itemDao;

	@Override
	public void adminItemRegister(ItemVO ivo) {
		System.out.println("상품 등록 서비스 ivo 확인"+ivo);
		itemDao.updateItem(ivo);
		
	}
}
