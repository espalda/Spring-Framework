package kr.green.plants.vo;

import java.util.Date;

public class OrderVO extends ItemVO{
	
	private int num;
	private int item_num;
	private int option_num;
	private Date date;
	private int option_count;
	private String status;
	private String option;
	private String option_price;
	private String order_num;
	private int order_price;
	
	
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
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getOption_count() {
		return option_count;
	}
	public void setOption_count(int option_count) {
		this.option_count = option_count;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	public String getOption() {
		return option;
	}
	public void setOption(String option) {
		this.option = option;
	}
	public String getOption_price() {
		return option_price;
	}
	public void setOption_price(String option_price) {
		this.option_price = option_price;
	}
	public String getOrder_num() {
		return order_num;
	}
	public void setOrder_num(String order_num) {
		this.order_num = order_num;
	}
	public int getOrder_price() {
		return order_price;
	}
	public void setOrder_price(int order_price) {
		this.order_price = order_price;
	}
	@Override
	public String toString() {
		return "OrderVO [num=" + num + ", item_num=" + item_num + ", option_num=" + option_num + ", date=" + date
				+ ", option_count=" + option_count + ", status=" + status + ", option=" + option + ", option_price="
				+ option_price + ", order_num=" + order_num + ", order_price=" + order_price + "]";
	}
	
	
	
	
}