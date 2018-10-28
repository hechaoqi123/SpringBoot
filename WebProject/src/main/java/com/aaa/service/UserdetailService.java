package com.aaa.service;

import java.util.List;
import java.util.Map;

import com.aaa.bean.Userdetail;
import com.github.pagehelper.PageInfo;

public interface UserdetailService {
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
	public void update(Userdetail user);
	//修改
	int updateByPrimaryKeySelective(Userdetail record);
}
