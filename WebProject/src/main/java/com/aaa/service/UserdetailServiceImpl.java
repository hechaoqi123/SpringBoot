package com.aaa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.bean.Userdetail;
import com.aaa.mapper.UserdetailMapper;

@Service
public class UserdetailServiceImpl implements UserdetailService {
	@Autowired
	  UserdetailMapper mapper;
	//查询单个用户信息
	public Userdetail getOne(Integer id){
		return mapper.selectByPrimaryKey(id);
	}
	//查询所有用户信息
	@Override
	public List<Userdetail> getAll() {
		return mapper.getAll();
	};
}
