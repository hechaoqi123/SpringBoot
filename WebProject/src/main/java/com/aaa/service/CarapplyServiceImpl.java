package com.aaa.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.base.BaseServiceImpl;
import com.aaa.bean.Carapply;
import com.aaa.mapper.CarapplyMapper;
@Service
public class CarapplyServiceImpl extends BaseServiceImpl<Carapply> implements CarapplyService{
    @Autowired
    CarapplyMapper mapper;
	public List<Carapply> getAll() {
		return mapper.selectAll();
	}

	
	public int inserCarapply(Carapply carapply) {
		return mapper.insert(carapply);
	}


	@Override
	public List<Map> getDept() {
		// TODO Auto-generated method stub
		return mapper.getDept();
	}


	@Override
	public List<Map> getCar() {
		// TODO Auto-generated method stub
		return mapper.getCar();
	}


	@Override
	public List<Map> getCarapplyDept() {
		// TODO Auto-generated method stub
		return mapper.getCarapplyDept();
	}


	@Override
	public List<Map> getCarapplyCar() {
		// TODO Auto-generated method stub
		return mapper.getCarapplyCar();
	}

}
