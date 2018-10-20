package com.aaa.mapper;

import java.util.List;

import com.aaa.bean.Entry;

public interface EntryMapper {
    int deleteByPrimaryKey(Integer enntryid);

    int insert(Entry record);

    int insertSelective(Entry record);

    Entry selectByPrimaryKey(Integer enntryid);

    int updateByPrimaryKeySelective(Entry record);

    int updateByPrimaryKey(Entry record);
    
    List<Entry> getAll();
}