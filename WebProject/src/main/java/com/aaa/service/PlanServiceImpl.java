package com.aaa.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.jasper.tagplugins.jstl.core.ForEach;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aaa.bean.Krar;
import com.aaa.bean.Userdetail;
import com.aaa.bean.Dept;
import com.aaa.bean.perform;
import com.aaa.bean.performUtil;
import com.aaa.bean.plan;
import com.aaa.bean.report;
import com.aaa.mapper.DeptMapper;
import com.aaa.mapper.PlanMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;



@Service
public class PlanServiceImpl implements PlanService {
    @Autowired
    private  PlanMapper mapper;
  

	@Override
	public PageInfo<Map> query(Integer pageNum,String name) {
		PageHelper.startPage(pageNum,10);
		List<Map> list=mapper.query(name);
	
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}

	@Override
	public PageInfo<Map> querytwo(Integer pageNum) {
		PageHelper.startPage(pageNum, 10);
		List<Map> list=mapper.querytwo();
		
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}

	
	@Override
	public List<plan> quer() {
		return mapper.quer();
	}

	@Override
	public List<Userdetail> quers() {
		return mapper.quers();
	}

	@Override
	public List<Dept> quersa() {
		List<Dept> quers1 = mapper.quersa();
		return quers1;
	}

	@Override
	public List<Krar> querst() {
		return mapper.querst();
	}
    @Transactional
	@Override
	public void adds(plan plan, Krar krar, List<perform> list) {
		 mapper.add(plan);
		 mapper.addthere(krar);
		 for (perform perform2 : list) {
			 mapper.addfour(perform2);
		 }


		
	}

	@Override
	public PageInfo<Map> ty(Integer pageNum, String type) {
		PageHelper.startPage(pageNum,10);
		List<Map> list=mapper.ty(type);
	    PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}

	@Override
	public List<plan> reser() {
		// TODO Auto-generated method stub
		return mapper.selectAll();
	}

	@Override
	public List<Map<String, String>> getOne(int id) {

		return mapper.getOne(id);
	}

	
	

	


	

}
