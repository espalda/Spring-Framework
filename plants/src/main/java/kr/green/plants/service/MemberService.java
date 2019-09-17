package kr.green.plants.service;

import java.util.ArrayList;

import kr.green.plants.vo.MemberVO;
import kr.green.plants.vo.SellerVO;
import kr.green.plants.vo.WishVO;

public interface MemberService {

	public boolean signup(MemberVO mvo);

	public MemberVO signin(MemberVO mvo);
	
	public MemberVO getMember(String id);

	public void updateMember(MemberVO mvo);

	public void deleteMember(String id);

	public String getVal(String str);
	
	/* id, pw 찾기 관련 서비스 */

	public MemberVO findMemberId(String name, String email);

	public MemberVO findMemberPw(String id, String name, String email);

	public String createPw();

	public void modifyPw(String id, String email, String newPw);

	public void sendMail(String email, String title, String contents);

	public void updateSeller(SellerVO svo);

	public ArrayList<SellerVO> selectSeller();

	public ArrayList<MemberVO> selectMember();

	public void insertWish(String id, Integer num);

	public ArrayList<WishVO> selectWish(String member_id);

}
