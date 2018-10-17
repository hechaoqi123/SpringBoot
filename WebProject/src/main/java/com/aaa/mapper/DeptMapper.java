package com.aaa.mapper;

import java.util.List;

import com.aaa.bean.Dept;
import com.aaa.bean.Groupcompany;

public interface DeptMapper {
    int deleteByPrimaryKey(Integer deptid);

    int insert(Dept record);

    int insertSelective(Dept record);

    Dept selectByPrimaryKey(Integer deptid);

    int updateByPrimaryKeySelective(Dept record);

    int updateByPrimaryKey(Dept record);
    
    public List<Dept> getAllDept();
    
}