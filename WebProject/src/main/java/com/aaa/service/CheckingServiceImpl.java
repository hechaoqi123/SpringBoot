package com.aaa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.bean.Checking;
import com.aaa.mapper.CheckingMapper;
@Service
public class CheckingServiceImpl implements CheckingService {
    @Autowired
    CheckingMapper mapper;
	@Override
	public List<Checking> getAll() {
		return mapper.selectAll();
	}

	@Override
	public void save(Checking checking) {
		 mapper.insert(checking);
	}

	@Override
	public Checking getOne(Integer id) {
		return mapper.selectByPrimaryKey(id);
	}

}
