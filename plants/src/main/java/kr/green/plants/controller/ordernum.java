package kr.green.plants.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;

public class ordernum {

	public static void main(String[] args) {
		Calendar calendar = Calendar.getInstance();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMdd");
		String currtime = dateFormat.format(calendar.getTime());
		//랜덤생성 8자리 번호
		String str = "123456789";
		String pw = "";
		for(int i=0; i< 8; i++) {
			int r = (int)(Math.random()*9);
			pw += str.charAt(r);
		}
		System.out.println(currtime+"-"+pw);
	}
	
	
}