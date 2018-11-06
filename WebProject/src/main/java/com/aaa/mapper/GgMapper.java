package com.aaa.mapper;

import java.util.List;
import java.util.Map;

import com.aaa.bean.Gg;

import tk.mybatis.mapper.common.Mapper;

public interface GgMapper extends  Mapper<Gg>{
	public List<Map> getAllGg();
	//添加
	public void addGg(Gg gg);
	public List<Map> getAllGgone1(String ggClassify);
	public List<Map> getAllGgone2(String ggClassify);
	public List<Map> getAllGgone3(String ggClassify);
	public List<Map> getAllGgone4(String ggClassify);
	public List<Map> getAllGgone5(String ggClassify);
	public List<Map> getAllGgone6(String ggClassify);
	public List<Map> getAllGgone7(String ggClassify);
	public List<Map> getAllGgone8(String ggClassify);
	
	public List<Map> getAll(int id);

}
