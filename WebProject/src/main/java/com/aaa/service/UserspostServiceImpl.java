package com.aaa.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.bean.Userspost;
import com.aaa.mapper.UserspostMapper;
@Service
public class UserspostServiceImpl implements UserspostService {
	@Autowired
	UserspostMapper mapper;
	@Override
	public int insert(Userspost record) {
		return mapper.insert(record);
	}

	@Override
	public int insertSelective(Userspost record) {
		return mapper.insertSelective(record);
	}

	@Override
	public int delUsersPost(Userspost record) {
		return mapper.delUsersPost(record);
	}

}
