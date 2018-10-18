package com.aaa.service;

import com.aaa.bean.Users;

public interface UsersService {
	Users getOneUsers(Users record);
	Users selectByPrimaryKey(Integer uid);
}
