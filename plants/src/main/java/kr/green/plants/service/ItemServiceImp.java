package kr.green.plants.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.plants.dao.ItemDAO;
import kr.green.plants.pagination.Criteria;
import kr.green.plants.vo.BasketVO;
import kr.green.plants.vo.ItemVO;
import kr.green.plants.vo.OptionVO;
import kr.green.plants.vo.OrderVO;

@Service
public class ItemServiceImp implements ItemService{

	@Autowired
	ItemDAO itemDao;
	
		@Override
		public ArrayList<ItemVO> selectNewItem() {
			return itemDao.selectNewItem();
		}
	
		@Override
		public ItemVO selectItemNum(Integer num) {
			return itemDao.selectItemNum(num);
		}

		@Override
		public ArrayList<OptionVO> selectOptionListNum(Integer num) {
			return itemDao.selectOptionListNum(num);
		}
		

		@Override
		public OptionVO selectOptionNum(Integer num) {
			return itemDao.selectOptionNum(num);
		}

		@Override
		public ArrayList<BasketVO> selectBasketListId(String id) {
			return itemDao.selectBasketListId(id);
		}

		@Override
		public BasketVO selectBasketNum(Integer num) {
			return itemDao.selectBasketNum(num);
		}

		@Override
		public void insertBasket(OptionVO opt, String id, Integer num) {
			itemDao.insertBasket(opt, id, num);
		}

		@Override
		public void updeteBasket(BasketVO bvo) {
			itemDao.updeteBasket(bvo);
		}

		@Override
		public void deleteBasket(Integer num) {
			itemDao.deleteBasket(num);
			
		}
		
		/** 랜덤생성 8자리 번호 */
		public String orderNum() {
			Calendar calendar = Calendar.getInstance();
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMdd");
			String currtime = dateFormat.format(calendar.getTime());

			String str = "123456789";
			String rand = "";
			for(int i=0; i< 8; i++) {
				int r = (int)(Math.random()*9);
				rand += str.charAt(r);
			}
			String num = currtime +"-"+ rand;
			return num;
		}
		
		@Override
		public ArrayList<OrderVO> selectOrderListId(String id) {
			return itemDao.selectOrderListId(id);
		}
		
		@Override
		public void insertOrder(OrderVO order, String id, Integer total) {
			OptionVO ovo = itemDao.selectOptionNum(order.getOption_num());
			System.out.println("재고수량 : "+ovo.getOption_count());
			System.out.println("주문수량 : "+order.getOrder_count());
			ovo.setOption_count(ovo.getOption_count()-order.getOrder_count());
			itemDao.updateOption(ovo);
			itemDao.insertOrder(order, id, total);
		}

		@Override
		public ArrayList<ItemVO> selectItemList(Criteria cri, String valid) {
			return itemDao.selectItemList(cri, valid);
		}

		@Override
		public int selectItemCount(Criteria cri, String valid) {
			return itemDao.selectItemCount(cri, valid);
		}

		@Override
		public ArrayList<OrderVO> selectOrderPaid(String order_num) {
			return itemDao.selectOrderPaid(order_num);
		}

		@Override
		public ArrayList<OptionVO> selectBestItemList() {
			// TODO Auto-generated method stub
			return itemDao.selectBestItemList();
		}

		@Override
		public ArrayList<ItemVO> selectItemGoods() {
			return itemDao.selectItemGoods();
		}


		

}
