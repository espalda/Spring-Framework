package kr.green.plants.vo;

public class WishVO extends ItemVO {
	
	private String member_id;
	private int item_num;
	
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public Integer getItem_num() {
		return item_num;
	}
	public void setItem_num(Integer item_num) {
		this.item_num = item_num;
	}
	@Override
	public String toString() {
		return "WishVO [" + super.toString() + ", member_id=" + member_id + ", item_num=" + item_num + "]";
	}	

}
