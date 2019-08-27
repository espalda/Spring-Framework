package kr.green.plants.service;

import kr.green.plants.pagination.Criteria;
import kr.green.plants.pagination.PageMaker;

public interface PageMakerService {

	PageMaker getPageMaker(int DisplayPageNum, Criteria cri, int totalCount);

}
