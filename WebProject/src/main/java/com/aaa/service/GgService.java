package com.aaa.service;

import java.util.List;
import java.util.Map;

import com.aaa.bean.Gg;
import com.github.pagehelper.PageInfo;

public interface GgService {
	public PageInfo  getAllGg(Integer pageNum);
	
	public void addGg(Gg gg);
	
	public PageInfo getAllGgone1(Integer pageNum,String ggClassify);
	public PageInfo getAllGgone2(Integer pageNum,String ggClassify);
	public PageInfo getAllGgone3(Integer pageNum,String ggClassify);
	public PageInfo getAllGgone4(Integer pageNum,String ggClassify);
	public PageInfo getAllGgone5(Integer pageNum,String ggClassify);
	public PageInfo getAllGgone6(Integer pageNum,String ggClassify);
	public PageInfo getAllGgone7(Integer pageNum,String ggClassify);
	public PageInfo getAllGgone8(Integer pageNum,String ggClassify);
	
	
	
	

}
