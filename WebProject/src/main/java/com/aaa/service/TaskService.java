package com.aaa.service;

import java.util.List;
import java.util.Map;

import com.aaa.bean.Krar;
import com.aaa.bean.Task;
import com.aaa.bean.perform;
import com.aaa.bean.plan;
import com.github.pagehelper.PageInfo;


public interface TaskService {
	public PageInfo<Map> query(Integer pageNum);
	public PageInfo<Map> querytwo(Integer pageNum);
	public void adds(Task task,Krar krar);
}
