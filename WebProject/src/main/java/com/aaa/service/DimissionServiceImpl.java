package com.aaa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.bean.Dimission;
import com.aaa.mapper.DimissionMapper;
@Service
public class DimissionServiceImpl implements DimissionService {
    @Autowired
    DimissionMapper mapper;
	@Override
	public List<Dimission> getAll() {
		return mapper.selectAll();
	}

	@Override
	public void save(Dimission dimission) {
		mapper.insert(dimission);		
	}

}
