package com.aaa.service;

import java.util.List;
import java.util.Map;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.aaa.base.BaseService;
import com.aaa.bean.Userdetail;
import com.github.pagehelper.PageInfo;

public interface UserdetailService extends BaseService<Userdetail>{
	//获取单个员工信息
	public Userdetail getOne(Integer id);
	//获取所有员工信息
	public List<Userdetail> getAll();
	//添加员工信息
	public void save(Userdetail user);
	//条件检索
	public List<Userdetail> queryByCriteria(String status);
	//删除员工信息
	public void remove(Integer userId);
	public PageInfo getAllUserdetails(Integer pageNum);
	//条件查询
	public PageInfo getAllOne(Integer pageNum,String dependence);
	
	public void update(Userdetail user);
	//修改
	public void updateByPrimaryKeySelective(Userdetail record);
	//生成绩效考勤表
	public XSSFWorkbook generate();
	
	public List<Userdetail> fuzzy(String username);
	//查询在职员工及试用员工
	public List<Userdetail> getOfficeUser();
}
