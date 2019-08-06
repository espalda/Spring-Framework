package kr.green.test.vo;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class BoardVO {
	private int num;
	private String title;
	private String contents;
	private String file;
	private String writer;
	private String valid;
	private Date registered;
	private int views;
	
	public int getNum() {
		return num;
	}
	public String getTitle() {
		return title;
	}
	public String getContents() {
		return contents;
	}
	
	
	
	public String getFile() {
		return file;
	}
	public String getFileName() {
		if(file == null) return "";
		int index = file.indexOf("_");
		if(index == -1) return "";
		return file.substring(index + 1);
	}
	
	
	public String getWriter() {
		return writer;
	}
	public String getValid() {
		return valid;
	}
	
	/** registered */
	public String getRegistered() {
		SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");
		return f.format(registered);
	}
	public String getRegisteredUntilDay() {
		SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return f.format(registered);
	}
	
	public void setRegistered(Date registered) {
		this.registered = registered;
	}
	public void setRegistered(String registered) {
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
		try {
			this.registered = transFormat.parse(registered);
		}catch (ParseException e) {
			e.printStackTrace();
		}
	}
	
	public int getViews() {
		return views;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public void setFile(String file) {
		this.file = file;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public void setValid(String valid) {
		this.valid = valid;
	}
	
	public void setViews(int views) {
		this.views = views;
	}
	
	@Override
	public String toString() {
		return "BoardVO [num=" + num + ", title=" + title + ", contents=" + contents + ", file=" + file + ", writer="
				+ writer + ", valid=" + valid + ", registered=" + registered + ", views=" + views + "]";
	}
	
	
}
