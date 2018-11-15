package com.aaa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.bean.Carmaintenance;
import com.aaa.mapper.CarmaintenanceMapper;

@Service
public class CarmaintenanceServiceImpl implements CarmaintenanceService {

	@Autowired
	CarmaintenanceMapper mapper;
	public List<Carmaintenance> getAll() {
		return mapper.selectAll();
	}

}
