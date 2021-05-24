package com.espalda.body.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.espalda.body.dao.memberDao;

@Service
public class memberServiceImp implements memberService {
	
	@Autowired
	memberDao memberdao;

	@Override
	public List<String> selectTestList() {
		return memberdao.selectTestList();
	}
	
}
