package com.aaa.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.bean.User;
import com.aaa.mapper.PlanMapper;
import com.aaa.mapper.UserMapper;

@Service
public class PlanServiceImpl implements PlanService {
    @Autowired
  PlanMapper mapper;

	@Override
	public List<Map> query(Integer pageNum) {
		// TODO Auto-generated method stub
		PageHelper.startPage(pageNum, 5);
		List<Map> list=mapper.query();
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}
	
	

}
