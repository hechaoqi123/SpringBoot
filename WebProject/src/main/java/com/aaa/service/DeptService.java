package com.aaa.service;

import java.util.List;

import com.aaa.bean.Dept;

public interface DeptService {
    public List<Dept> getAllDept(Integer scid);
    
    int insert(Dept record);
    
    int deleteByPrimaryKey(Integer deptid);
}