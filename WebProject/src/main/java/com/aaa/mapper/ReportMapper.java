package com.aaa.mapper;

import java.util.List;
import java.util.Map;

import com.aaa.bean.Krar;
import com.aaa.bean.Task;
import com.aaa.bean.perform;
import com.aaa.bean.plan;
import com.aaa.bean.report;
import com.aaa.bean.reportser;

import tk.mybatis.mapper.common.Mapper;

public interface ReportMapper extends Mapper<report> {
	public List<Map> query();
	public List<Map> querytwo();
	public int add(report report);
    public List<report> sele();

	public void addthere(Krar krar);
	public void addfour(reportser reportser);

	public List<Map> reporres(String rtype);
}
