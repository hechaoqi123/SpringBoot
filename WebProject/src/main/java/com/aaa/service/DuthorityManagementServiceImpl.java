package com.aaa.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.bean.Visitonemodile;
import com.aaa.mapper.DuthorityManagementMapper;
@Service
public class DuthorityManagementServiceImpl implements DuthorityManagementService {
	@Autowired
	DuthorityManagementMapper mapper;
	@Override
	public void insertVisitonemodile(Visitonemodile visitonemodile) {
		mapper.insertVisitonemodile(visitonemodile);
	}
	@Override
	public List<Map> selectVisitonemodile() {
		return mapper.selectVisitonemodile();
	}

}
