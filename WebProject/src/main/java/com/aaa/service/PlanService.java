package com.aaa.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.aaa.bean.Krar;
import com.aaa.bean.Userdetail;
import com.aaa.bean.Dept;
import com.aaa.bean.perform;
import com.aaa.bean.performUtil;
import com.aaa.bean.plan;
import com.github.pagehelper.PageInfo;


public interface PlanService {
	public PageInfo<Map> query(Integer pageNum);
	public PageInfo<Map> querytwo(Integer pageNum);
	public void adds(plan plan,Krar krar,List<perform> list);
	public List<plan> quer();
	public List<Userdetail> quers();
	public List<Dept> quersa();
	public List<Krar> querst();
}
