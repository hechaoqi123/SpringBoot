package com.aaa.mapper;

import java.util.List;

import com.aaa.bean.Checking;

import tk.mybatis.mapper.common.Mapper;

public interface CheckingMapper extends Mapper<Checking> {
    int deleteByPrimaryKey(Integer checkingid);

    int insert(Checking record);

    int insertSelective(Checking record);

    Checking selectByPrimaryKey(Integer checkingid);

    int updateByPrimaryKeySelective(Checking record);

    int updateByPrimaryKey(Checking record);

	List<Checking> getAll();
}