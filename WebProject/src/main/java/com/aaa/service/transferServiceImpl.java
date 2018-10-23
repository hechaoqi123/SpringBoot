package com.aaa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aaa.bean.transfer;
import com.aaa.mapper.transferMapper;
@Service
public class transferServiceImpl implements TransferService {
     @Autowired
     transferMapper mapper;
	@Override
	public List<transfer> getAll() {
		return mapper.selectAll();
	}

	@Transactional
	@Override
	public void save(transfer transfer) {
	   mapper.insert(transfer);

	}

}
