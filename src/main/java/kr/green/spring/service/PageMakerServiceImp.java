package kr.green.spring.service;

import org.springframework.stereotype.Service;

import kr.green.spring.pagination.Criteria;
import kr.green.spring.pagination.PageMaker;

@Service
public class PageMakerServiceImp implements PageMakerService{

	@Override
	public PageMaker getPageMaker(int DisplayPageNum, Criteria cri, int totalCount) {
		PageMaker pm = new PageMaker();		//페이지메이커 3개가 필요 한번에 보여질 페이지 메이커 개수 3개 가 필수 생성후 전달만 하면 model로 출력하기만 하면 끝
		pm.setCriteria(cri);	//pm의 현재 페이지 정보 설정
		pm.setDisplayPageNum(DisplayPageNum);	//아래 페이지 개수 리스트
		pm.setTotalCount(totalCount);		//pm의 총 게시글 수 설정
		return pm;
	}

	
}
