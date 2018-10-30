package com.aaa.service;

import java.util.List;

import com.aaa.bean.Wd;
import com.github.pagehelper.PageInfo;

public interface WdService {
	//添加
	public void addWd(Wd wd);
	
	//查询
	public List<Wd> getAllWd();
	
	public Wd getOne(Integer id);
	
	//條件查詢
	public PageInfo getAllOne1(Integer pageNum,String wdclassify);
	
	//條件查詢
	public PageInfo getAllone2(Integer pageNum);
	public PageInfo getAllone3(Integer pageNum);
	public PageInfo getAllone4(Integer pageNum);
	

}
