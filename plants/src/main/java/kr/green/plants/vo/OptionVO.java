package kr.green.plants.vo;

public class OptionVO extends ItemVO{
	
	private int num;
	private int option_price;
	private String option;
	private String valid;
	private int item_num;
	private String item_name;
	private int option_count;	

	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
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
	public String getValid() {
		return valid;
	}
	public void setValid(String valid) {
		this.valid = valid;
	}
	public String getItem_name() {
		return item_name;
	}
	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}
	
	
	public int getOption_count() {
		return option_count;
	}
	public void setOption_count(int option_count) {
		this.option_count = option_count;
	}
	public int getItem_num() {
		return item_num;
	}
	public void setItem_num(int item_num) {
		this.item_num = item_num;
	}
	@Override
	public String toString() {
		return "OptionVO [num=" + num + ", option_price=" + option_price + ", option=" + option + ", valid=" + valid
				+ ", item_num=" + item_num + ", item_name=" + item_name + ", option_count=" + option_count + "]";
	}
	
	
	
	
	
	
	
	
	
}
