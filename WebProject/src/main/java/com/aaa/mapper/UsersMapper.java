package com.aaa.mapper;

import java.util.List;
import java.util.Map;

import com.aaa.bean.Users;

import tk.mybatis.mapper.common.Mapper;

public interface UsersMapper extends Mapper<Users> {
    Users getOneUsers(Users record);
    //查询有访问权限的用户
    List<Users> getAlluser();
    //查询有访问权限的用
    List<Users> alootTrueUser(Map map);
    //查询没有访问权限的用户
    List<Users> alootFalseUser(Map map);
    //查询当前用户用户
    List<Users> postTrueUser(Map map);
    //查询没有角色用户
    List<Users> postFalseUser(Map map);
    //查询一个用户有关详细信息  
    List<Map> getOneUserDetails(Integer uid);

}