package com.aaa.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.bean.Wd;
import com.aaa.mapper.WdMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
@Service
public class WdServiceImpl implements WdService{
	@Autowired
	WdMapper mapper;
  
	@Override
	public void addWd(Wd wd) {
		mapper.addWd(wd);
	}

	@Override
	public List<Wd> getAllWd() {
		// TODO Auto-generated method stub
		return mapper.selectAll();
	}

	@Override
	public Wd getOne(Integer id) {

		return mapper.selectByPrimaryKey(id);
	}

	@Override
	public PageInfo getAllOne1(Integer pageNum, String wdclassify) {
		PageHelper.startPage(pageNum,13); 
		Wd w=new Wd();
		w.setWdclassify(wdclassify);
		List<Wd> list=mapper.select(w);
		PageInfo<Wd> info=new PageInfo<Wd>(list);
		return info;
	}

	@Override
	public PageInfo getAllone2(Integer pageNum) {
		PageHelper.startPage(pageNum,13);
		List<Map> list=mapper.getAllone2();
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}

	@Override
	public PageInfo getAllone3(Integer pageNum) {
		PageHelper.startPage(pageNum,13);
		List<Map> list=mapper.getAllone3();
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}

	@Override
	public PageInfo getAllone4(Integer pageNum) {
		PageHelper.startPage(pageNum,13);
		List<Map> list=mapper.getAllone4();
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}

	@Override
	public List<Map> getAll(int id) {
		// TODO Auto-generated method stub
		return mapper.getAll(id);
	}

}
