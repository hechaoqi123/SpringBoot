package com.aaa.mapper;

import java.util.List;
import java.util.Map;

import com.aaa.bean.Zs;

import tk.mybatis.mapper.common.Mapper;

public interface ZsMapper extends Mapper<Zs>{

	
	
	
	/*public List<Map> getAllone2( String name);*/
	
	public List<Zs> getAllone0();
	public List<Zs> getAllone1(String name);
	
	public List<Map> getAllone2();
	public List<Map> getAllone3();
	public List<Map> getAllone4();
	
	public List<Map> getAll(int id);
	
	

}
