package com.aaa.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.bean.Gg;
import com.aaa.mapper.GgMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
@Service
public class GgServiceImpl implements GgService{
    @Autowired
	GgMapper mapper;
    
	@Override
	public PageInfo getAllGg(Integer pageNum) {
         PageHelper.startPage(pageNum, 13);
         List<Map> list=mapper.getAllGg();
		PageInfo<Map> info=new PageInfo<Map>(list);
		return  info;
	}

	@Override
	public void addGg(Gg gg) {
		// TODO Auto-generated method stub
		
		 mapper.addGg(gg);
	}

	@Override
	public PageInfo getAllGgone1(Integer pageNum, String ggClassify) {
		 PageHelper.startPage(pageNum, 13);
         List<Map> list=mapper.getAllGgone1(ggClassify);
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}
	@Override
	public PageInfo getAllGgone2(Integer pageNum, String ggClassify) {
		 PageHelper.startPage(pageNum, 13);
         List<Map> list=mapper.getAllGgone2(ggClassify);
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}

	@Override
	public PageInfo getAllGgone3(Integer pageNum, String ggClassify) {
		 PageHelper.startPage(pageNum, 13);
         List<Map> list=mapper.getAllGgone3(ggClassify);
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}

	@Override
	public PageInfo getAllGgone4(Integer pageNum, String ggClassify) {
		 PageHelper.startPage(pageNum, 13);
         List<Map> list=mapper.getAllGgone4(ggClassify);
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}

	@Override
	public PageInfo getAllGgone5(Integer pageNum, String ggClassify) {
		 PageHelper.startPage(pageNum, 13);
         List<Map> list=mapper.getAllGgone5(ggClassify);
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}
	@Override
	public PageInfo getAllGgone6(Integer pageNum, String ggClassify) {
		 PageHelper.startPage(pageNum, 13);
         List<Map> list=mapper.getAllGgone6(ggClassify);
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}
	@Override
	public PageInfo getAllGgone7(Integer pageNum, String ggClassify) {
		 PageHelper.startPage(pageNum, 13);
         List<Map> list=mapper.getAllGgone7(ggClassify);
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}
	@Override
	public PageInfo getAllGgone8(Integer pageNum, String ggClassify) {
		 PageHelper.startPage(pageNum, 13);
         List<Map> list=mapper.getAllGgone8(ggClassify);
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}

	@Override
	public List<Map> getAll(int id) {

		return mapper.getAll(id);
	}


}
