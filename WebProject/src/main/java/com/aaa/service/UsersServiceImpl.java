package com.aaa.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.bean.Users;
import com.aaa.mapper.UsersMapper;
@Service
public class UsersServiceImpl implements UsersService{
	@Autowired
	UsersMapper mapper;
	@Override
	public Users getOneUsers(Users record) {
		Users oneUsers = mapper.getOneUsers(record);
		return oneUsers;
	}
	@Override
	public Users selectByPrimaryKey(Integer uid) {
		return mapper.selectByPrimaryKey(uid);
	}
}
