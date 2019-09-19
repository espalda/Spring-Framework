package kr.green.plants.service;

import java.util.ArrayList;

import kr.green.plants.vo.BasketVO;
import kr.green.plants.vo.ItemVO;
import kr.green.plants.vo.OptionVO;
import kr.green.plants.vo.OrderVO;

public interface ItemService {

	public ArrayList<ItemVO> selectNewItem();
	
	public ItemVO selectItemNum(Integer num);

	public ArrayList<OptionVO> getOption(String name); /* 수정 필요 */
	
	public OptionVO getOption2(Integer num);

	public ArrayList<BasketVO> selectBasketListId(String id);
	
	public BasketVO selectBasketNum(Integer num);
	
	public void insertBasket(OptionVO opt, String id, Integer num);
	
	public void updeteBasket(BasketVO bvo);
	
	public void deleteBasket(Integer num);
	
	public String orderNum();
	
	public ArrayList<OrderVO> selectOrderListId(String id);
	
	public void insertOrder(OrderVO order, String id, Integer num, Integer total);

}
