package kr.green.plants.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.plants.vo.ItemVO;

public interface ItemDAO {

	public void insertItem(@Param("item") ItemVO ivo);

	public ArrayList<ItemVO> selectItem();

}
