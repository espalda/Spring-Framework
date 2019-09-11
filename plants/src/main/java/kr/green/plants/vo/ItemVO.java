package kr.green.plants.vo;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class ItemVO {
	
	private int num;
	private String name;
	private String category;
	private Date registered;
	private int count;
	private int price;
	private String contents;
	private String file;
	private int option_num;
	private String valid;
	private String seller_member_id;
	private int delivery_charge;
	
	


	public int getNum() {
		return num;
	}


	public void setNum(int num) {
		this.num = num;
	}


	public String getName() {
		return name;
	}
	
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getCategory() {
		return category;
	}


	public void setCategory(String category) {
		this.category = category;
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
	
	
	public String getContents() {
		return contents;
	}
	
	
	public void setContents(String contents) {
		this.contents = contents;
	}
	
	
	public String getFile() {
		return file;
	}
	
	public String getFileName() {
		   if(file == null) return "";
		   int index = file.indexOf("_");
		      return file.substring(index + 1);
		}
	
	
	public void setFile(String file) {
		this.file = file;
	}
	
	
	public int getOption_num() {
		return option_num;
	}
	
	
	public void setOption_num(int option_num) {
		this.option_num = option_num;
	}
	
	
	public String getValid() {
		return valid;
	}
	
	
	public void setValid(String valid) {
		this.valid = valid;
	}

	
	public String getSeller_member_id() {
		return seller_member_id;
	}


	public void setSeller_member_id(String seller_member_id) {
		this.seller_member_id = seller_member_id;
	}

	
	public int getDelivery_charge() {
		return delivery_charge;
	}


	public void setDelivery_charge(int delivery_charge) {
		this.delivery_charge = delivery_charge;
	}


	@Override
	public String toString() {
		return "ItemVO [num=" + num + ", name=" + name + ", category=" + category + ", registered=" + registered
				+ ", count=" + count + ", price=" + price + ", contents=" + contents + ", file=" + file + ", option_num="
				+ option_num + ", valid=" + valid + ", seller_member_id=" + seller_member_id + ", delivery_charge="
				+ delivery_charge + "]";
	}

	
	
	

	
}
