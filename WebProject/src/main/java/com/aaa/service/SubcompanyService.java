package com.aaa.service;

import java.util.List;

import com.aaa.bean.Subcompany;

public interface SubcompanyService {
    public List<Subcompany> getAllSubcompany();
    
    int insert(Subcompany record);
    
    int deleteByPrimaryKey(Integer scid);

}