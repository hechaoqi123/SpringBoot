package com.aaa.service;

import java.util.List;
import java.util.Map;

import com.aaa.bean.Wb;
import com.github.pagehelper.PageInfo;

 public interface WbService {
	//外部通讯录
		public PageInfo getAllWb(Integer pageNum);
   //添加
		public void addWb(Wb list);
		//条件查询2
		public PageInfo getAllWbone1(Integer pageNum,String wbfl);
				
		//条件查询2
		public PageInfo getAllWbone2(Integer pageNum,String wbfl);
		//条件查询3
		public PageInfo getAllWbone3(Integer pageNum,String wbfl);
		//条件查询4
		public PageInfo getAllWbone4(Integer pageNum,String wbfl);
        
		//显示详情
		public List<Map> getAll(int id);
       

 }
