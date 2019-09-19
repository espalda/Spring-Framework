package kr.green.plants.service;

import java.util.ArrayList;

import kr.green.plants.vo.BasketVO;
import kr.green.plants.vo.ItemVO;
import kr.green.plants.vo.OptionVO;
import kr.green.plants.vo.OrderVO;

public interface ItemService {

	public ArrayList<ItemVO> selectNewItem();
	
	public ItemVO selectItemNum(Integer num);

	public ArrayList<OptionVO> selectOptionListNum(Integer num); /* 해당 아이템 넘버가 주어지면 옵션 정보를 가져오는 역할, 매개변수가 상품 넘버 */
	
	public OptionVO selectOptionNum(Integer num); /* 매개변수가 옵션 넘버 */

	public ArrayList<BasketVO> selectBasketListId(String id);
	
	public BasketVO selectBasketNum(Integer num);
	
	public void insertBasket(OptionVO opt, String id, Integer num);
	
	public void updeteBasket(BasketVO bvo);
	
	public void deleteBasket(Integer num);
	
	public String orderNum();
	
	public ArrayList<OrderVO> selectOrderListId(String id);
	
	public void insertOrder(OrderVO order, String id, Integer num, Integer total);



}
