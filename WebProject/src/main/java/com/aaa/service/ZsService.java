package com.aaa.service;

import java.util.List;
import java.util.Map;

import com.aaa.bean.Zs;
import com.github.pagehelper.PageInfo;

import tk.mybatis.mapper.common.Mapper;

public interface ZsService{
	
	public void getAddzs(Zs zs);
	
	public PageInfo getAllZs(Integer pageNum);
	
	public PageInfo getAllhf(Integer pageNum,String name);/**/

}
