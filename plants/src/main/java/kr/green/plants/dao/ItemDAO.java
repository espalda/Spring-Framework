package kr.green.plants.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.plants.vo.BasketVO;
import kr.green.plants.vo.ItemVO;
import kr.green.plants.vo.OptionVO;
import kr.green.plants.vo.OrderVO;

public interface ItemDAO {

	public void insertItem(@Param("item") ItemVO ivo);

	public ArrayList<ItemVO> selectItem();

	public ItemVO getItem(@Param("num")Integer num);

	public ArrayList<ItemVO> selectNewItem();

	public void insertItemOption(@Param("opt") OptionVO ovo);

	public ArrayList<OptionVO> selectOption();

	public ArrayList<OptionVO> getOption(@Param("name") String name);

	public OptionVO getOption2(@Param("num") Integer num);

	public void insertBasket(@Param("opt") OptionVO opt, @Param("id")String id, @Param("num")Integer num);

	public ArrayList<BasketVO> selectBasket(@Param("id") String id);

	public void insertOrder(@Param("order")OrderVO order, @Param("id") String id, @Param("num") Integer num, @Param("total") Integer total);

	public ArrayList<OrderVO> selectOrder(@Param("id") String id);

	public ArrayList<ItemVO> selectItem2(@Param("num") Integer num);

	public ArrayList<ItemVO> selectItemList(@Param("num") Integer num);

	public void updeteBasket(@Param("bas") BasketVO bvo);

	public BasketVO getBasket(@Param("num") Integer num);

	public void deleteBasket(@Param("num") Integer num);

	


}
