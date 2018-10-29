package com.aaa.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.aaa.bean.Dept;

import tk.mybatis.mapper.common.Mapper;

public interface DeptMapper extends Mapper<Dept>{
    
    public List<Dept> getAllDept(@Param("belong")Integer belong);
    
}
