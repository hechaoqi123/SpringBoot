package com.aaa.mapper;

import java.util.List;
import java.util.Map;

import com.aaa.bean.Gg;

public interface GgMapper {
	public List<Map> getAllGg();
	
	//添加
	public void addGg(Gg gg);
	
	public List<Map> getAllGgone1(String ggClassify);
	public List<Map> getAllGgone2(String ggClassify);
	public List<Map> getAllGgone3(String ggClassify);
	public List<Map> getAllGgone4(String ggClassify);
	public List<Map> getAllGgone5(String ggClassify);

}
