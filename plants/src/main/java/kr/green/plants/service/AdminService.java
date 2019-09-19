package kr.green.plants.service;

import java.util.ArrayList;

import kr.green.plants.vo.BoardVO;
import kr.green.plants.vo.ItemVO;
import kr.green.plants.vo.MemberVO;
import kr.green.plants.vo.OptionVO;
import kr.green.plants.vo.OrderVO;
import kr.green.plants.vo.SellerVO;

public interface AdminService {

	public ArrayList<SellerVO> selectSellerList();
	
	public ArrayList<MemberVO> selectMemberList();

	public void updateSeller(SellerVO svo);

	public ArrayList<ItemVO> selectItemList();

	public ArrayList<OptionVO> selectOptionList();
	
	public Integer insertItem(ItemVO ivo);

	public void insertOption(OptionVO ovo);

	public ArrayList<OrderVO> selectOrderList();

	public ArrayList<BoardVO> selectBoardList();
	


}
