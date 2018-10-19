package com.aaa.service;

import java.util.List;
import java.util.Map;

import com.aaa.bean.Users;

public interface UsersService {
	Users getOneUsers(Users record);
	Users selectByPrimaryKey(Integer uid);
	List<Users> getAlluser();
	
	 //查询有访问权限的用户
    List<Users> alootTrueUser(Map map);
    //查询没有访问权限的用户
    List<Users> alootFalseUser(Map map);
}
