package kr.green.plants.service;

import java.util.ArrayList;

import kr.green.plants.vo.BasketVO;
import kr.green.plants.vo.ItemVO;
import kr.green.plants.vo.OptionVO;

public interface ItemService {

	public void insertItem(ItemVO ivo);

	public ArrayList<ItemVO> selectItem();

	public ItemVO getItem(Integer num);

	public ArrayList<ItemVO> selectNewItem();

	public void insertOption(OptionVO ovo);

	public ArrayList<OptionVO> selectOption();

	public ArrayList<OptionVO> getOption(String name);

	public OptionVO getOption2(Integer num);

	public void insertBasket(OptionVO opt, String member_id, ItemVO ivo);

	public ArrayList<BasketVO> selectBasket(String id);



}
