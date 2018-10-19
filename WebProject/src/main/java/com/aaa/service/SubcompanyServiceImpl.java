package com.aaa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aaa.bean.Subcompany;
import com.aaa.mapper.SubcompanyMapper;
@Service
public class SubcompanyServiceImpl implements SubcompanyService {
	@Autowired
	SubcompanyMapper mapper;
    public List<Subcompany> getAllSubcompany(){
		return mapper.getAllSubcompany();
	}
    @Transactional
	@Override
	public int insert(Subcompany record) {
		return mapper.insert(record);
	}
}