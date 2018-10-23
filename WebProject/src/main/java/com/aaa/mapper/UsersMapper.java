package com.aaa.mapper;

import java.util.List;
import java.util.Map;

import com.aaa.bean.Users;

import tk.mybatis.mapper.common.Mapper;

public interface UsersMapper extends Mapper<Users> {
    
    Users getOneUsers(Users record);
    
    //查询有访问权限的用户
    List<Users> alootTrueUser(Map map);
    //查询没有访问权限的用户
    List<Users> alootFalseUser(Map map);

	
}