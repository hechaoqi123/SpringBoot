package com.aaa.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.bean.Krar;
import com.aaa.bean.Task;
import com.aaa.mapper.PlanMapper;
import com.aaa.mapper.TaskMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;



@Service
public class TaskServiceImpl implements TaskService {
    @Autowired
   private  TaskMapper mapper;

	@Override
	public PageInfo<Map> query(Integer pageNum) {
		//PageHelper.startPage(pageNum,17);
		List<Map> list=mapper.query();
		
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}

	@Override
	public PageInfo<Map> querytwo(Integer pageNum) {
		PageHelper.startPage(pageNum, 17);
		List<Map> list=mapper.querytwo();
		
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}

	@Override
	public void adds(Task task, Krar krar) {
		// TODO Auto-generated method stub
		mapper.add(task);
		mapper.addone(krar);
	}
	
	

}
