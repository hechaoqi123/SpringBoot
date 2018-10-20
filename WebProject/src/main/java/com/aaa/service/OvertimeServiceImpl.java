package com.aaa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aaa.bean.Overtime;
import com.aaa.mapper.OvertimeMapper;
@Service
public class OvertimeServiceImpl implements OvertimeService {
    @Autowired
    OvertimeMapper mapper;
	@Override
	public List<Overtime> getAll() {
		return mapper.selectAll();
	}

	@Transactional
	@Override
	public void save(Overtime overtime) {
		mapper.insert(overtime);
	}

}
