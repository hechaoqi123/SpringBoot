package com.aaa.mapper;

import java.util.List;

import com.aaa.bean.Official;
import com.aaa.bean.Overtime;

import tk.mybatis.mapper.common.Mapper;

public interface OvertimeMapper extends Mapper<Overtime>{
    int deleteByPrimaryKey(Integer overtimeid);

    int insert(Overtime record);

    int insertSelective(Overtime record);

    Overtime selectByPrimaryKey(Integer overtimeid);

    int updateByPrimaryKeySelective(Overtime record);

    int updateByPrimaryKey(Overtime record);
   
    List<Overtime> getAll();
}