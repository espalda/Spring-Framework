package kr.green.plants.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.plants.vo.BasketVO;
import kr.green.plants.vo.ItemVO;
import kr.green.plants.vo.OptionVO;
import kr.green.plants.vo.OrderVO;

public interface AdminDAO {

	public ArrayList<ItemVO> selectItem();

	public ArrayList<ItemVO> selectNewItem();

	public ArrayList<OptionVO> selectOption();

	public ArrayList<OrderVO> selectOrderList();

	


}
