package kr.green.plants.service;

import org.springframework.stereotype.Service;

import kr.green.plants.pagination.Criteria;
import kr.green.plants.pagination.PageMaker;

@Service
public class PageMakerServiceImp implements PageMakerService{

	@Override
	public PageMaker getPageMaker(int displayPageNum, Criteria cri, int totalCount) {
		PageMaker pm = new PageMaker();			/* 페이지메이커에 필수 3가지를 담을 객체 생성 */
		pm.setCriteria(cri);					/* 현재 페이지 정보 설정 */
		pm.setDisplayPageNum(displayPageNum);	/* 아래 페이지 개수 리스트 */
		pm.setTotalCount(totalCount);			/* 총 게시글 수 설정 */
		return pm;
	}

	
}
