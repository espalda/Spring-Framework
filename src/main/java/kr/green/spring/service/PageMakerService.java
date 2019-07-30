package kr.green.spring.service;

import kr.green.spring.pagination.Criteria;
import kr.green.spring.pagination.PageMaker;

public interface PageMakerService {

	PageMaker getPageMaker(int DisplayPageNum, Criteria cri, int totalCount);

}
