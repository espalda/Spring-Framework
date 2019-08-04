package kr.green.test.vo;

public class MemberVO {
	//DB에서 멤버 테이블에 있는 속성들을 가져오기 위한 클래스
	//getter & setter, ToString
	private String id;
	private String pw;
	private String email;
	private String gender;
	
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
	
	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", pw=" + pw + ", email=" + email + ", gender=" + gender + "]";
	}
	
	
}
