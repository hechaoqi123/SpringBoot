package com.aaa.mapper;

import com.aaa.bean.Visittwomodile;

public interface VisittwomodileMapper {
    int deleteByPrimaryKey(Integer mtowid);

    int insert(Visittwomodile record);

    int insertSelective(Visittwomodile record);

    Visittwomodile selectByPrimaryKey(Integer mtowid);

    int updateByPrimaryKeySelective(Visittwomodile record);

    int updateByPrimaryKey(Visittwomodile record);
}