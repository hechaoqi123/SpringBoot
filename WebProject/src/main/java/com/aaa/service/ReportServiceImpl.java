package com.aaa.service;

import java.util.List;
import java.util.Map;

import org.apache.jasper.tagplugins.jstl.core.ForEach;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.bean.Krar;
import com.aaa.bean.Task;
import com.aaa.bean.report;
import com.aaa.bean.reportser;
import com.aaa.mapper.PlanMapper;
import com.aaa.mapper.ReportMapper;
import com.aaa.mapper.TaskMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;



@Service
public class ReportServiceImpl implements ReportService {
    @Autowired
   private  ReportMapper mapper;

	@Override
	public PageInfo<Map> query(Integer pageNum) {
		PageHelper.startPage(pageNum,10);
		List<Map> list=mapper.query();
		
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}

	@Override
	public PageInfo<Map> querytwo(Integer pageNum) {
		PageHelper.startPage(pageNum,10);
		List<Map> list=mapper.querytwo();
		
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
	}

	@Override
	public void adds(report report, Krar krar, List<reportser> list) {
		// TODO Auto-generated method stub
		mapper.add(report);
		mapper.addthere(krar);
	    for (reportser reportser : list) {
		mapper.addfour(reportser);
	    }
	}

	@Override
	public List<report> sele() {
		// TODO Auto-generated method stub
		return mapper.sele();
	}

	@Override
	public PageInfo<Map> reporres(Integer pageNum,String rtype) {
		PageHelper.startPage(pageNum,10);		
		List<Map> list=mapper.reporres(rtype);

		PageInfo<Map> info=new PageInfo<Map>(list);
		
		return info;
	}



	@Override
	public List<report> selelis() {
		// TODO Auto-generated method stub
		return mapper.selectAll();
	}
	

	
	
	

}
