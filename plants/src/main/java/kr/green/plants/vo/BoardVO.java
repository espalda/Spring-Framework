package kr.green.plants.vo;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class BoardVO {
	
	private int num;
	private int views;
	private int file_num;
	private String member_id;
	private String category;
	private String title;
	private Date registered;
	private String contents;
	private String valid;
	private String file;
	
	
	
	public int getNum() {
		return num;
	}



	public void setNum(int num) {
		this.num = num;
	}



	public int getViews() {
		return views;
	}



	public void setViews(int views) {
		this.views = views;
	}



	public int getFile_num() {
		return file_num;
	}



	public void setFile_num(int file_num) {
		this.file_num = file_num;
	}



	public String getMember_id() {
		return member_id;
	}



	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}



	public String getCategory() {
		return category;
	}



	public void setCategory(String category) {
		this.category = category;
	}



	public String getTitle() {
		return title;
	}



	public void setTitle(String title) {
		this.title = title;
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


	public String getContents() {
		return contents;
	}



	public void setContents(String contents) {
		this.contents = contents;
	}



	public String getValid() {
		return valid;
	}



	public void setValid(String valid) {
		this.valid = valid;
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
	
	



	@Override
	public String toString() {
		return "BoardVO [num=" + num + ", views=" + views + ", file_num=" + file_num + ", member_id=" + member_id
				+ ", category=" + category + ", title=" + title + ", registered=" + registered + ", contents="
				+ contents + ", valid=" + valid + ", file=" + file + "]";
	}



	
	
}
