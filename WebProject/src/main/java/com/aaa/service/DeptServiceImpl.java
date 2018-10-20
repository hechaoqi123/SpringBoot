package com.aaa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aaa.bean.Dept;
import com.aaa.mapper.DeptMapper;
@Service
public class DeptServiceImpl implements DeptService {
	@Autowired
	DeptMapper mapper;
    public List<Dept> getAllDept(){
		return mapper.selectAll();
	}
    @Transactional
	@Override
	public int insert(Dept record) {
		return mapper.insert(record);
	};
	@Override
	public List<Dept> getAll() {
		return mapper.selectAll();
	}

}
