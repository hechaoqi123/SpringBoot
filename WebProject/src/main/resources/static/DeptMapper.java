package com.aaa.mapper;

import java.util.List;

import com.aaa.bean.Checking;
import com.aaa.bean.Dept;

import tk.mybatis.mapper.common.Mapper;

public interface DeptMapper extends Mapper<Dept>{
    int deleteByPrimaryKey(Integer deptid);

    int insert(Dept record);

    int insertSelective(Dept record);

    Dept selectByPrimaryKey(Integer deptid);

    int updateByPrimaryKeySelective(Dept record);

    int updateByPrimaryKey(Dept record);
    
    List<Dept> getAll();
}