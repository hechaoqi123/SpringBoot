package com.aaa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aaa.bean.leaveResource;
import com.aaa.mapper.leaveResourceMapper;

@Service
public class leaveResourceServiceImpl implements leaveResourceService {
    @Autowired
    leaveResourceMapper mapper;
    //添加
    @Transactional
	@Override
	public void save(leaveResource entity){
		   mapper.insert(entity);
	   };
   //查询
	@Override
	public List<leaveResource> getAll(){
		   return mapper.selectAll();
	   }
	@Override
	public leaveResource getOne(Integer id) {
		return mapper.selectByPrimaryKey(id);
	}
}
