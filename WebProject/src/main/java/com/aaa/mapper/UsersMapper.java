package com.aaa.mapper;

import java.util.List;
import java.util.Map;

import com.aaa.bean.Users;

public interface UsersMapper {
    int deleteByPrimaryKey(Integer uid);

    int insert(Users record);

    int insertSelective(Users record);

    Users selectByPrimaryKey(Integer uid);

    int updateByPrimaryKeySelective(Users record);

    int updateByPrimaryKey(Users record);
    
    Users getOneUsers(Users record);
    
    List<Users> getAlluser();
    //查询有访问权限的用户
    List<Users> alootTrueUser(Map map);
    //查询没有访问权限的用户
    List<Users> alootFalseUser(Map map);

	
}