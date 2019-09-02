package kr.green.plants.dao;

import org.apache.ibatis.annotations.Param;

import kr.green.plants.vo.ItemVO;

public interface ItemDAO {

	public void updateItem(@Param("item") ItemVO ivo);

}
