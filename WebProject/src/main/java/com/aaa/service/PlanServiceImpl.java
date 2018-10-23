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
import com.aaa.bean.dept;
import com.aaa.bean.perform;
import com.aaa.bean.performUtil;
import com.aaa.bean.plan;
import com.aaa.mapper.DeptMapper;
import com.aaa.mapper.PlanMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;



@Service
public class PlanServiceImpl implements PlanService {
    @Autowired
   private  PlanMapper mapper;
    @Autowired
    private DeptMapper deptMapper;

	@Override
	public PageInfo<Map> query(Integer pageNum) {
		PageHelper.startPage(pageNum,17);
		List<Map> list=mapper.query();
		
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}

	@Override
	public PageInfo<Map> querytwo(Integer pageNum) {
		PageHelper.startPage(pageNum, 17);
		List<Map> list=mapper.querytwo();
		
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}

	
	@Override
	public List<plan> quer() {
		// TODO Auto-generated method stub
		return mapper.quer();
	}

	@Override
	public List<Userdetail> quers() {
		// TODO Auto-generated method stub
		return mapper.quers();
	}

	@Override
	public List<dept> quersa() {
		List<dept> quers1 = mapper.quersa();
		return quers1;
	}

	@Override
	public List<Krar> querst() {
		// TODO Auto-generated method stub
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

	


	

}