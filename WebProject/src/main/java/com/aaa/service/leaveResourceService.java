package com.aaa.service;

import java.util.List;

import com.aaa.bean.leaveResource;

public interface leaveResourceService {

	//添加
	void save(leaveResource entity);

	//查询
	List<leaveResource> getAll();
	
	//单个查询
	leaveResource getOne(Integer id);

}