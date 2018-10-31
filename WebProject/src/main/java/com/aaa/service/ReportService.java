package com.aaa.service;

import java.util.List;
import java.util.Map;

import com.aaa.bean.Krar;
import com.aaa.bean.Task;
import com.aaa.bean.perform;
import com.aaa.bean.plan;
import com.aaa.bean.report;
import com.aaa.bean.reportser;
import com.github.pagehelper.PageInfo;


public interface ReportService {
	public PageInfo<Map> query(Integer pageNum ,String name);
	public PageInfo<Map> querytwo(Integer pageNum);
	public void adds(report report,Krar krar,List<reportser> list);
	public List<report> sele();
	public List<report> selelis();
	public PageInfo<Map> reporres(Integer pageNum,String rtype);
	public List<Map<String, String>> getOne(int id);
}
