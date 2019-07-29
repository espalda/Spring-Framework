package kr.green.spring.vo;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class BoardVO {
	private int num;
	private String title;
	private String contents;
	private String writer;
	private Date registered;
	private int views;
	private String file;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
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
	
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	
	
	public String getFile() {
		
		return file;
	}
	
	public String getFileName() {
		if(file == null) return "";
		int index = file.indexOf("_");	//indexOf(괄호) 괄호에 있는 문자를 찾아내는 역할
		return file.substring(index + 1);	//subString index에서 찾은 문자를 기준
	}
	
	
	public void setFile(String file) {
		this.file = file;
	}
	
	
	@Override
	public String toString() {
		return "BoardVO [num=" + num + ", title=" + title + ", contents=" + contents + ", writer=" + writer
				+ ", registered=" + registered + ", views=" + views + ", file=" + file + "]";
	}
	
	
	
	
}
