package kr.green.plants.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.plants.dao.ItemDAO;
import kr.green.plants.vo.BasketVO;
import kr.green.plants.vo.ItemVO;
import kr.green.plants.vo.OptionVO;
import kr.green.plants.vo.OrderVO;

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

		@Override
		public OptionVO getOption2(Integer num) {
			return itemDao.getOption2(num);
		}

		@Override
		public void insertBasket(OptionVO opt, String id, Integer num) {
			itemDao.insertBasket(opt, id, num);
		}

		@Override
		public ArrayList<BasketVO> selectBasket(String id) {
			return itemDao.selectBasket(id);
		}

		@Override
		public void insertOrder(OrderVO order, String id, Integer num) {
			itemDao.insertOrder(order, id, num);
		}
				
		@Override
		public ArrayList<OrderVO> selectOrder(String id) {
			return itemDao.selectOrder(id);
		}
		
		/** 랜덤생성 8자리 번호 */
		public static void main(String[] args) {
			Calendar calendar = Calendar.getInstance();
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMdd");
			String currtime = dateFormat.format(calendar.getTime());

			String str = "123456789";
			String pw = "";
			for(int i=0; i< 8; i++) {
				int r = (int)(Math.random()*9);
				pw += str.charAt(r);
			}
			System.out.println(currtime+"-"+pw);
		}

		

}
