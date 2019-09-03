package kr.green.plants.service;

import java.util.ArrayList;

import kr.green.plants.vo.ItemVO;

public interface ItemService {

	public void insertItem(ItemVO ivo);

	public ArrayList<ItemVO> selectItem();

}
