package kr.green.plants.vo;

public class BasketVO extends ItemVO{

	private int num;
	private int item_num;
	private int option_num;
	private int option_count;
	private String member_id;
	private int option_price;
	private String option;
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getItem_num() {
		return item_num;
	}
	public void setItem_num(int item_num) {
		this.item_num = item_num;
	}
	public int getOption_num() {
		return option_num;
	}
	public void setOption_num(int option_num) {
		this.option_num = option_num;
	}
	public int getOption_count() {
		return option_count;
	}
	public void setOption_count(int option_count) {
		this.option_count = option_count;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public int getOption_price() {
		return option_price;
	}
	public void setOption_price(int option_price) {
		this.option_price = option_price;
	}
	public String getOption() {
		return option;
	}
	public void setOption(String option) {
		this.option = option;
	}
	@Override
	public String toString() {
		return "BasketVO [num=" + num + ", item_num=" + item_num + ", option_num=" + option_num + ", option_count="
				+ option_count + ", member_id=" + member_id + ", option_price=" + option_price + ", option=" + option
				+ "]";
	}
	
	
	

	

	
}
