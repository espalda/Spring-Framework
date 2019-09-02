package kr.green.plants.vo;

public class FileVO {
	
	private int num;
	private int board_num;
	private String path;
	private String valid;
	
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getBoard_num() {
		return board_num;
	}
	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}
	
	/* 경로 */
	public String getPath() {
		return path;
	}
	
	public void setPath(String path) {
		this.path = path;
	}
	
	/* 무슨 역할이지? */
	public String getFileName() {
		if(path == null)
			return "";
		int index = path.indexOf("_");
		return path.substring(index+1);
	}
	
	
	public String getValid() {
		return valid;
	}
	public void setValid(String valid) {
		this.valid = valid;
	}
	
	
	@Override
	public String toString() {
		return "FileVO [num=" + num + ", board_num=" + board_num + ", path=" + path + ", valid=" + valid + "]";
	}
	
	

}
