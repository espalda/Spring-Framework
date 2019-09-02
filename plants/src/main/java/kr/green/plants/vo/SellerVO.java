package kr.green.plants.vo;

public class SellerVO {
	
	private String num;
	private String name;
	private String address;
	private String phone;
	private String email;
	private String valid;
	
	
	
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getValid() {
		return valid;
	}
	public void setValid(String valid) {
		this.valid = valid;
	}
	
	
	@Override
	public String toString() {
		return "SellerVO [num=" + num + ", name=" + name + ", address=" + address + ", phone=" + phone + ", email="
				+ email + ", valid=" + valid + "]";
	}
	
	
	
	
	
}
