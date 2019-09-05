package kr.green.plants.service;

import java.util.ArrayList;

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

}
