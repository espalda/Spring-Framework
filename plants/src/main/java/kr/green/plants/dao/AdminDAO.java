package kr.green.plants.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.plants.vo.BasketVO;
import kr.green.plants.vo.BoardVO;
import kr.green.plants.vo.ItemVO;
import kr.green.plants.vo.MemberVO;
import kr.green.plants.vo.OptionVO;
import kr.green.plants.vo.OrderVO;
import kr.green.plants.vo.SellerVO;

public interface AdminDAO {

	public ArrayList<SellerVO> selectSellertList();
	
	public void updateSeller(@Param("seller") SellerVO svo);

	public ArrayList<MemberVO> selectMemberList();

	public ArrayList<ItemVO> selectItemList();

	public ArrayList<OptionVO> selectOptionList();
	
	public void insertItem(@Param("item") ItemVO ivo);

	public void insertOption(@Param("opt") OptionVO ovo);
	
	public ArrayList<OrderVO> selectOrderList();

	public ArrayList<BoardVO> selectBoardList();


}
