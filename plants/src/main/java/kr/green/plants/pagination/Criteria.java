package kr.green.plants.pagination;

public class Criteria {
	private int page; /* 현재 페이지 */
	private int perPageNum;	/* 한 페이지 당 컨텐츠 갯수 */
	private String search;	 /* 검색 */
	private String type;	/* 검색 카테고리 */
	
	/* Criteria 생성자
	 * 현재 페이지를 1 페이지로, 한 페이지 당 컨텐츠 갯수 10개 */
	public Criteria() {
		this.page = 1;
		this.perPageNum = 10;
		this.search = "";	/* 생성자 지정을 하지 않으면 null 값이 들어가므로 생성자 설정 필수 */
		this.type = "0";
	}
	
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		/* 현재 페이지 번호를 음수로 설정하려 할 때 1로 초기화 */
		if(page <= 0) {
			this.page = 1;
		}
		else
			this.page = page;
	}
	public int getPerPageNum() {
		return perPageNum;
	}
	public void setPerPageNum(int perPageNum) {
		/* 한 페이지에 컨텐츠 수를 0이상 100이하로 설정
		개발자 설정에 따라 100부분을 수정할 수 있음 */
		if(perPageNum <=0 || perPageNum > 100) {
			this.perPageNum = 10;
		}
		else
			this.perPageNum = perPageNum;
	}
	
	public String getSearch() {
	    return search;
	}
	public void setSearch(String search) {
	    this.search = search;
	}
	public String getType() {
	    return type;
	}
	public void setType(String type) {
	    this.type = type;
	}
	
	/* 쿼리문에서 limit에 사용되는 인덱스를 계산하는 getter */
	public int getPageStart() {
		return (this.page -1) * perPageNum;
	}
	
	@Override
	public String toString() {
		return "Criteria [page=" + page + ", perPageNum=" + perPageNum + ", search=" + search + ", type=" + type + "]";
	}
	
	
	
}
