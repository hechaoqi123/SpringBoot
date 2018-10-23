package com.aaa.mapper;

import java.util.List;

import com.aaa.bean.Users;
import com.aaa.bean.Userstowmodile;

import tk.mybatis.mapper.common.Mapper;

public interface UserstowmodileMapper extends Mapper<Userstowmodile>{
    
    List<Users> getTwoUsers(Integer mTowId);
}