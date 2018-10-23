package com.aaa.service;

import java.util.List;

import com.aaa.bean.Users;
import com.aaa.bean.Userstowmodile;

public interface UserstowmodileService {
    int insert(Userstowmodile record);

    int insertSelective(Userstowmodile record);
    
    int delUserstowmodile(Userstowmodile record);
    
    List<Users> getTwoUsers(Integer mTowId);
}