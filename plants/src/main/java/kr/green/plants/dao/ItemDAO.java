package kr.green.plants.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.plants.vo.BasketVO;
import kr.green.plants.vo.ItemVO;
import kr.green.plants.vo.OptionVO;

public interface ItemDAO {

	public void insertItem(@Param("item") ItemVO ivo);

	public ArrayList<ItemVO> selectItem();

	public ItemVO getItem(@Param("num")Integer num);

	public ArrayList<ItemVO> selectNewItem();

	public void insertItemOption(@Param("opt") OptionVO ovo);

	public ArrayList<OptionVO> selectOption();

	public ArrayList<OptionVO> getOption(@Param("name") String name);

	public OptionVO getOption2(@Param("num") int num);

	public void insertBasket(@Param("opt") OptionVO opt, @Param("member_id")String member_id, @Param("item")ItemVO ivo);

	public ArrayList<BasketVO> selectBasket(@Param("member_id") String member_id);

	


}
