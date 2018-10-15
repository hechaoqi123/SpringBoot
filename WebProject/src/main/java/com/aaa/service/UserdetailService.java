package com.aaa.service;

import java.util.List;

import com.aaa.bean.Userdetail;

public interface UserdetailService {
	//获取单个员工信息
	public Userdetail getOne(Integer id);
	//获取所有员工信息
	public List<Userdetail> getAll();
}
