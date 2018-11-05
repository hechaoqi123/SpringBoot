package com.aaa.mapper;

import java.util.List;
import java.util.Map;

import com.aaa.bean.Wd;

import tk.mybatis.mapper.common.Mapper;

public interface WdMapper extends Mapper<Wd>{
	public void addWd(Wd wd);
	
	public List<Map> getAllone2();
	public List<Map> getAllone3();
	public List<Map> getAllone4();
	
	public List<Map> getAll(int id);
	
 
}
