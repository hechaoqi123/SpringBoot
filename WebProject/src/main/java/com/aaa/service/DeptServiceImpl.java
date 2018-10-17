package com.aaa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.bean.Dept;
import com.aaa.mapper.DeptMapper;
@Service
public class DeptServiceImpl implements DeptService {
	@Autowired
	DeptMapper mapper;
    public List<Dept> getAllDept(){
		return mapper.getAllDept();
	}
	@Override
	public int insert(Dept record) {
		return mapper.insert(record);
	};
}