package com.aaa.mapper;

import com.aaa.bean.Userspost;

public interface UserspostMapper {
    int insert(Userspost record);

    int insertSelective(Userspost record);
    
    int delUsersPost(Userspost record);
}