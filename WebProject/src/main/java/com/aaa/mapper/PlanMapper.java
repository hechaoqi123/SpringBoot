package com.aaa.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.aaa.bean.Krar;
import com.aaa.bean.Userdetail;
import com.aaa.bean.Dept;
import com.aaa.bean.perform;
import com.aaa.bean.plan;

public interface PlanMapper {
/*条件查询*/
	public List<Map> query();
	/*条件查询所有*/
	public List<Map> querytwo();
	public int add(plan plan);


	public void addthere(Krar krar);
	public void addfour(perform perform);

	/* 查询下拉从属于*/
	public List<plan> quer();
	public List<Userdetail> quers();
	public List<Dept> quersa();
	public List<Krar> querst();
	
}
