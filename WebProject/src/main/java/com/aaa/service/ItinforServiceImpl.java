package com.aaa.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.bean.Itinfor;
import com.aaa.mapper.ItinforMapper;
@Service
public class ItinforServiceImpl implements ItinforService{
	@Autowired
	ItinforMapper mapper;
	
	public void itInsert(Itinfor i) {
		mapper.insertSelective(i);
	}

}
