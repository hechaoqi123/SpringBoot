package com.aaa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.bean.User;
import com.aaa.mapper.UserMapper;
@Service
public class UserServiceImpl implements UserService {
    @Autowired
     UserMapper mapper;
	@Override
	public List<User> getAllUser() {
		return mapper.getAllUser();
	}

}
