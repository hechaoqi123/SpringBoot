package com.aaa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

import com.aaa.bean.Official;
import com.aaa.mapper.OfficialMapper;
@Service
public class OfficialServiceImpl implements OfficialService {
	@Autowired
	OfficialMapper mapper;
	public List<Official> getAll(){
    	return mapper.selectAll();
    }
	//新增转正申请
	@Transactional
	@Override
	public void save(Official official) {
		mapper.insert(official);
	}
}
