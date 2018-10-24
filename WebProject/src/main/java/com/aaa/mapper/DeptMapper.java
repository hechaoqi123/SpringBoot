package com.aaa.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.aaa.bean.Dept;

public interface DeptMapper {
    int deleteByPrimaryKey(Integer deptid);

    int insert(Dept record);

    int insertSelective(Dept record);

    Dept selectByPrimaryKey(Integer deptid);

    int updateByPrimaryKeySelective(Dept record);

    int updateByPrimaryKey(Dept record);
    
    public List<Dept> getAllDept(@Param("belong")Integer belong);
    
}