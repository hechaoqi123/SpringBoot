package com.aaa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.aaa.bean.Metting;
import com.aaa.mapper.MettingMapper;
@Service
public class MettingServiceImpl implements MettingService {

	@Autowired   
	MettingMapper mapper;
	public List<Metting> getAll() {
		return mapper.getAll();
	}
	public Metting selectMetting(Integer id) {
		return mapper.selectMetting(id);
	}
	public int insertMetting(Metting metting) {
		return mapper.insertMetting(metting);
	}
	
	public boolean updateMetting(Metting metting) {
		return mapper.updateMetting(metting);
	}
	
	public int deleteMetting(Integer id) {
		return mapper.deleteMetting(id);
	}
	
}
