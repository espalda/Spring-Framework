package kr.green.plants.vo;

public class BasketVO {

	private int num;
	private int Item_num;
	private int option_count;
	private int option_num;
	private String member_id;
	private String seller_member_id;
	private String item_name;
	private String item_file;
	private int delivery_charge;
	private int total_price;
	private String option;
	private int option_total_price;
	
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getItem_num() {
		return Item_num;
	}
	public void setItem_num(int item_num) {
		Item_num = item_num;
	}
	public int getOption_count() {
		return option_count;
	}
	public void setOption_count(int option_count) {
		this.option_count = option_count;
	}
	public int getOption_num() {
		return option_num;
	}
	public void setOption_num(int option_num) {
		this.option_num = option_num;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getSeller_member_id() {
		return seller_member_id;
	}
	public void setSeller_member_id(String seller_member_id) {
		this.seller_member_id = seller_member_id;
	}
	public String getItem_name() {
		return item_name;
	}
	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}
	public String getItem_file() {
		return item_file;
	}
	public void setItem_file(String item_file) {
		this.item_file = item_file;
	}
	public int getDelivery_charge() {
		return delivery_charge;
	}
	public void setDelivery_charge(int delivery_charge) {
		this.delivery_charge = delivery_charge;
	}
	public int getTotal_price() {
		return total_price;
	}
	public void setTotal_price(int total_price) {
		this.total_price = total_price;
	}
	public String getOption() {
		return option;
	}
	public void setOption(String option) {
		this.option = option;
	}
	public int getOption_total_price() {
		return option_total_price;
	}
	public void setOption_total_price(int option_total_price) {
		this.option_total_price = option_total_price;
	}
	
	@Override
	public String toString() {
		return "BasketVO [num=" + num + ", Item_num=" + Item_num + ", option_count=" + option_count + ", option_num="
				+ option_num + ", member_id=" + member_id + ", seller_member_id=" + seller_member_id + ", item_name="
				+ item_name + ", item_file=" + item_file + ", delivery_charge=" + delivery_charge + ", total_price="
				+ total_price + ", option=" + option + ", option_total_price=" + option_total_price + "]";
	}
	
	
	
	
}
