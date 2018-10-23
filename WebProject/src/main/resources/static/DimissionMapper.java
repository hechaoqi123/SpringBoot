package com.aaa.mapper;

import java.util.List;

import com.aaa.bean.Dept;
import com.aaa.bean.Dimission;

import tk.mybatis.mapper.common.Mapper;

public interface DimissionMapper  extends Mapper<Dimission>{
    int deleteByPrimaryKey(Integer dimissionid);

    int insert(Dimission record);

    int insertSelective(Dimission record);

    Dimission selectByPrimaryKey(Integer dimissionid);

    int updateByPrimaryKeySelective(Dimission record);

    int updateByPrimaryKey(Dimission record);
    
    List<Dimission> getAll();
}