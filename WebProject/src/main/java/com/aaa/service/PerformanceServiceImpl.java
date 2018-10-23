package com.aaa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aaa.bean.Performance;
import com.aaa.mapper.PerformanceMapper;

@Service
public class PerformanceServiceImpl implements PerformanceService {
	@Autowired
	PerformanceMapper mapper;
	/* (non-Javadoc)
	 * @see com.aaa.service.PerformanceService#getAll()
	 */
	@Override
	public List<Performance> getAll() {
		return mapper.selectAll();
	}
	/* (non-Javadoc)
	 * @see com.aaa.service.PerformanceService#save(com.aaa.bean.Performance)
	 */
	@Override
	@Transactional
	public void save(Performance per){
		mapper.insert(per);
	}
}
