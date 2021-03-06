package kr.green.plants.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.plants.vo.MemberVO;
import kr.green.plants.vo.SellerVO;
import kr.green.plants.vo.WishVO;

public interface MemberDAO {

	public void signup(@Param("member") MemberVO mvo);

	public MemberVO selectMemberId(@Param("id") String id);

	public void updateMember(@Param("member") MemberVO mvo);

	public MemberVO findMemberId(@Param("name") String name, @Param("email")String email);

	public MemberVO findMemberPw(@Param("id")String id, @Param("name")String name, @Param("email")String email);

	public void insertWish(@Param("id")String id, @Param("num")Integer num);

	public ArrayList<WishVO> selectWishListId(@Param("id") String member_id);

	public void updateWish(@Param("num") Integer num);

}
