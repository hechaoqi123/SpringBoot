package com.aaa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aaa.bean.Evection;
import com.aaa.mapper.EvectionMapper;
@Service
public class evectionServiceImpl implements evectionService {
    @Autowired
    EvectionMapper mapper;
	@Override
	public List<Evection> getAll() {
		return mapper.selectAll();
	}
    @Transactional
	@Override
	public void save(Evection evection) {
		mapper.insert(evection);
	}

}