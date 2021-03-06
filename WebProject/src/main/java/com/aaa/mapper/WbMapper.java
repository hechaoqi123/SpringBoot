package com.aaa.mapper;

import java.util.List;
import java.util.Map;

import com.aaa.bean.Wb;

import tk.mybatis.mapper.common.Mapper;

public interface WbMapper extends Mapper<Wb> {
	public List<Map> getAllWb();
	
	public void addWb(Wb list);
	//条件查询1
    public List<Map> getAllWbone1(String wbfl);
	//条件查询2
	public List<Map> getAllWbone2(String wbfl); 
	
	//条件查询3
	public List<Map> getAllWbone3(String wbfl); 
	//条件查询4
	public List<Map> getAllWbone4(String wbfl); 
	
	public List<Map> getAll(int id);
	

}
