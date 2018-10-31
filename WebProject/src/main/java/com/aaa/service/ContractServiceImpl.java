package com.aaa.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.bean.Contract;
import com.aaa.mapper.ContractMapper;

@Service
public class ContractServiceImpl implements ContractService{
	@Autowired
	ContractMapper mapper;

	@Override
	public void insert(Contract ct) {
		mapper.insert(ct);
	}

	@Override
	public List<Map> selectAll(String key) {
		return mapper.selectAllByKey(key);
	}

	@Override
	public List<Map<String, String>> query(Integer cid) {
		return mapper.getOne(cid);
	}

	@Override
	public void updateid(Integer ctid) {
		mapper.updateid(ctid);
	}

	@Override
	public void updateOne(Integer ctid) {
		mapper.updateOne(ctid);
	}

	@Override
	public void updateTwo(Integer ctid) {
		mapper.updateTwo(ctid);		
	}

	@Override
	public void updateThree(Integer ctid) {
		mapper.updateThree(ctid);		
	}
	
	
}
