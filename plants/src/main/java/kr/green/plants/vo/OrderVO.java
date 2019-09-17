package kr.green.plants.vo;

import java.util.Date;

public class OrderVO {
	
	private int num;
	private int item_num;
	private int option_num;
	private Date date;
	private int total_price;
	private String status;
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
	public int getTotal_price() {
		return total_price;
	}
	public void setTotal_price(int total_price) {
		this.total_price = total_price;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "OrderVO [num=" + num + ", item_num=" + item_num + ", option_num=" + option_num + ", date=" + date
				+ ", total_price=" + total_price + ", status=" + status + "]";
	}
	
	
	
}
