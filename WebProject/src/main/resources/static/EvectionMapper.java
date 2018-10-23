package com.aaa.mapper;

import java.util.List;

import com.aaa.bean.Entryapply;
import com.aaa.bean.Evection;

import tk.mybatis.mapper.common.Mapper;

public interface EvectionMapper extends Mapper<Evection>{
    int deleteByPrimaryKey(Integer evectionid);

    int insert(Evection record);

    int insertSelective(Evection record);

    Evection selectByPrimaryKey(Integer evectionid);

    int updateByPrimaryKeySelective(Evection record);

    int updateByPrimaryKey(Evection record);

	List<Evection> getAll();
}