package kr.green.plants.vo;

public class BasketVO {

	private int num;
	private String member_id;
	private int Item_num;
	private int count;
	private int option_num;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public int getItem_num() {
		return Item_num;
	}
	public void setItem_num(int item_num) {
		Item_num = item_num;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getOption_num() {
		return option_num;
	}
	public void setOption_num(int option_num) {
		this.option_num = option_num;
	}
	@Override
	public String toString() {
		return "BasketVO [num=" + num + ", member_id=" + member_id + ", Item_num=" + Item_num + ", count=" + count
				+ ", option_num=" + option_num + "]";
	}
	
	
}
