package com.aaa.mapper;

import java.util.List;

import com.aaa.bean.Subcompany;

public interface SubcompanyMapper {
    int deleteByPrimaryKey(Integer scid);

    int insert(Subcompany record);

    int insertSelective(Subcompany record);

    Subcompany selectByPrimaryKey(Integer scid);

    int updateByPrimaryKeySelective(Subcompany record);

    int updateByPrimaryKey(Subcompany record);
    
    public List<Subcompany> getAllSubcompany();
}