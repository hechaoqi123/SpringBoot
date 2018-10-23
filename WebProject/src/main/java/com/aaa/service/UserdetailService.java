package com.aaa.service;

import java.util.List;

import com.aaa.bean.Userdetail;

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
}