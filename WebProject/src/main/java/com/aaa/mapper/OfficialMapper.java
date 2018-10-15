package com.aaa.mapper;

import com.aaa.bean.Official;

public interface OfficialMapper {
    int deleteByPrimaryKey(Integer officialid);

    int insert(Official record);

    int insertSelective(Official record);

    Official selectByPrimaryKey(Integer officialid);

    int updateByPrimaryKeySelective(Official record);

    int updateByPrimaryKey(Official record);
}