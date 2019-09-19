package kr.green.plants.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.plants.vo.BasketVO;
import kr.green.plants.vo.ItemVO;
import kr.green.plants.vo.OptionVO;
import kr.green.plants.vo.OrderVO;

public interface ItemDAO {
	
	public ArrayList<ItemVO> selectNewItem();

	public ItemVO selectItemNum(@Param("num")Integer num);

	public ArrayList<OptionVO> getOption(@Param("name") String name);
	
	public OptionVO getOption2(@Param("num") Integer num);
	
	public ArrayList<BasketVO> selectBasketListId(@Param("id") String id);
	
	public BasketVO selectBasketNum(@Param("num") Integer num);
	
	public void insertBasket(@Param("opt") OptionVO opt, @Param("id")String id, @Param("num")Integer num);
	
	public void updeteBasket(@Param("bas") BasketVO bvo);
	
	public void deleteBasket(@Param("num") Integer num);

	public ArrayList<OrderVO> selectOrderListId(@Param("id") String id);
	
	public void insertOrder(@Param("order")OrderVO order, @Param("id") String id, @Param("num") Integer num, @Param("total") Integer total);

	


}
