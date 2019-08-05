package kr.green.test.vo;

public class MemberVO {
	private String id;
	private String pw;
	private String email;
	private String gender;
	private String name;
	private String authority;
	
	public String getId() {
		return id;
	}
	public String getPw() {
		return pw;
	}
	public String getEmail() {
		return email;
	}
	public String getGender() {
		return gender;
	}
	public String getName() {
		return name;
	}
	public String getAuthority() {
		return authority;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}
	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", pw=" + pw + ", email=" + email + ", gender=" + gender + ", name=" + name
				+ ", authority=" + authority + "]";
	}
	
	
}
