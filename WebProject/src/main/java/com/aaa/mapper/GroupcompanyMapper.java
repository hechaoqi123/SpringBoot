package com.aaa.mapper;

import java.util.List;

import com.aaa.bean.Groupcompany;

public interface GroupcompanyMapper {
    int deleteByPrimaryKey(Integer gcid);

    int insert(Groupcompany record);

    int insertSelective(Groupcompany record);

    Groupcompany selectByPrimaryKey(Integer gcid);

    int updateByPrimaryKeySelective(Groupcompany record);

    int updateByPrimaryKey(Groupcompany record);
    
    public List<Groupcompany> getAllGroupcompany();
}