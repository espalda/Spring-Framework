package kr.green.plants.service;

import java.util.ArrayList;

import kr.green.plants.vo.BasketVO;
import kr.green.plants.vo.ItemVO;
import kr.green.plants.vo.OptionVO;
import kr.green.plants.vo.OrderVO;

public interface ItemService {

	public void insertItem(ItemVO ivo);

	public ArrayList<ItemVO> selectItem();

	public ItemVO getItem(Integer num);

	public ArrayList<ItemVO> selectNewItem();

	public void insertOption(OptionVO ovo);

	public ArrayList<OptionVO> selectOption();

	public ArrayList<OptionVO> getOption(String name);

	public OptionVO getOption2(Integer num);

	public void insertBasket(OptionVO opt, String id, Integer num);

	public ArrayList<BasketVO> selectBasket(String id);

	public void insertOrder(OrderVO order, String id, Integer num, Integer total);

	public ArrayList<OrderVO> selectOrder(String id);

	public ArrayList<ItemVO> selectItem2(Integer num);

	public String orderNum();

	public ArrayList<ItemVO> selectItemList(Integer num);

	public void updeteBasket(BasketVO bvo);

	public BasketVO getBasket(Integer num);

	public void deleteBasket(Integer num);

	public ArrayList<OrderVO> selectOrderList(String id);

}
