package kr.green.plants.vo;

public class WishVO extends ItemVO {
	
	private String member_id;
	private int item_num;
	private String wish_valid;
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public int getItem_num() {
		return item_num;
	}
	public void setItem_num(int item_num) {
		this.item_num = item_num;
	}
	public String getWish_valid() {
		return wish_valid;
	}
	public void setWish_valid(String wish_valid) {
		this.wish_valid = wish_valid;
	}
	@Override
	public String toString() {
		return "WishVO [member_id=" + member_id + ", item_num=" + item_num + ", wish_valid=" + wish_valid + "]";
	}
	

	
	
	
	

}
