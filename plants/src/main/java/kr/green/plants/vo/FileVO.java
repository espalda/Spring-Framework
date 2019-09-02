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
	
	/* ex) aoa_bcddss */
	public String getFileName() {
		if(path == null)
			return "";
		int index = path.indexOf("_");	/* _의 위치를 찾는 역할 */
		return path.substring(index+1); /* _다음의 값을 불러오는 역할 */
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
