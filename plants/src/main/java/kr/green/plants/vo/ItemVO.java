package kr.green.plants.vo;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class ItemVO {

	private String name;
	private String seller_num;
	private Date registered;
	private int count;
	private int price;
	private int deliveryfee;
	private String contents;
	private String file;
	private String option;
	private String valid;
	
	
	public String getName() {
		return name;
	}
	
	
	public void setName(String name) {
		this.name = name;
	}
	
	
	public String getSeller_num() {
		return seller_num;
	}
	
	
	public void setSeller_num(String seller_num) {
		this.seller_num = seller_num;
	}
	
	
	public String getRegistered() {
		SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		return f.format(registered);
	}
	public void setRegistered(Date registered) {
		this.registered = registered;
	}
	
	public void setRegistered(String registered) {
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		try {
			this.registered = transFormat.parse(registered);
		}catch (ParseException e) {
			e.printStackTrace();
		}
	}

	
	
	public int getCount() {
		return count;
	}
	
	
	public void setCount(int count) {
		this.count = count;
	}
	
	
	public int getPrice() {
		return price;
	}
	
	
	public void setPrice(int price) {
		this.price = price;
	}
	
	
	public int getDeliveryfee() {
		return deliveryfee;
	}
	
	
	public void setDeliveryfee(int deliveryfee) {
		this.deliveryfee = deliveryfee;
	}
	
	
	public String getContents() {
		return contents;
	}
	
	
	public void setContents(String contents) {
		this.contents = contents;
	}
	
	
	public String getFile() {
		return file;
	}
	
	
	public void setFile(String file) {
		this.file = file;
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


	@Override
	public String toString() {
		return "itemVO [name=" + name + ", seller_num=" + seller_num + ", registered=" + registered + ", count=" + count
				+ ", price=" + price + ", deliveryfee=" + deliveryfee + ", contents=" + contents + ", file=" + file
				+ ", option=" + option + ", valid=" + valid + "]";
	}
	
	
	
	
	
}
