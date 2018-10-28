package com.aaa.service;

import com.aaa.bean.Userspost;

public interface UserspostService {
    int insert(Userspost record);

    int insertSelective(Userspost record);
    
    int delUsersPost(Userspost record);
}