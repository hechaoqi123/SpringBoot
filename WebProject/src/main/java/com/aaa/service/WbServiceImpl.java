package com.aaa.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.bean.Wb;
import com.aaa.mapper.WbMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
@Service
public class WbServiceImpl implements WbService{
    @Autowired
	WbMapper wbmapper;
	//外部通讯录
	
	@Override
	public PageInfo getAllWb(Integer pageNum) {
		  PageHelper.startPage(pageNum, 13);
          List<Map> list=wbmapper.getAllWb();
          PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}

	@Override
	public void addWb(Wb list) {
		wbmapper.addWb(list);		
	}
	@Override
	public PageInfo getAllWbone1(Integer pageNum,String wbfl) {
		// TODO Auto-generated method stub
		PageHelper.startPage(pageNum, 13);
		List<Map> list=wbmapper.getAllWbone1(wbfl);
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}

	@Override
	public PageInfo getAllWbone2(Integer pageNum,String wbfl) {
		// TODO Auto-generated method stub
		PageHelper.startPage(pageNum, 13);
		List<Map> list=wbmapper.getAllWbone2(wbfl);
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}
	@Override
	public PageInfo getAllWbone3(Integer pageNum,String wbfl) {
		// TODO Auto-generated method stub
		PageHelper.startPage(pageNum, 13);
		List<Map> list=wbmapper.getAllWbone3(wbfl);
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}
	@Override
	public PageInfo getAllWbone4(Integer pageNum,String wbfl) {
		// TODO Auto-generated method stub
		PageHelper.startPage(pageNum, 13);
		List<Map> list=wbmapper.getAllWbone4(wbfl);
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}

	@Override
	public List<Map> getAll(int id) {
		// TODO Auto-generated method stub
		  
		return wbmapper.getAll(id);
	}

	

}
