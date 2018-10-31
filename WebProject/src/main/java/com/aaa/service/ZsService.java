package com.aaa.service;


import java.util.List;
import java.util.Map;

import com.aaa.bean.Zs;
import com.arjuna.ats.internal.jdbc.drivers.modifiers.list;
import com.github.pagehelper.PageInfo;


public interface ZsService {
	
	public void getAddzs(Zs zs);
	
	public PageInfo getAllZs(Integer pageNum);
	
	public PageInfo getAllone0(Integer pageNum);
	public PageInfo getAllone1(Integer pageNum,String zsclassify);
	
	
	public PageInfo getAllone2(Integer pageNum);
	public PageInfo getAllone3(Integer pageNum);
	public PageInfo getAllone4(Integer pageNum);
	
	public List<Map> getAll(int id);


}
