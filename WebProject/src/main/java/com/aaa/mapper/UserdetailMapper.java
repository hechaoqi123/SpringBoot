package com.aaa.mapper;

import java.util.List;

import com.aaa.bean.Userdetail;

public interface UserdetailMapper {
    int deleteByPrimaryKey(Integer detailid);

    int insert(Userdetail record);

    int insertSelective(Userdetail record);

    Userdetail selectByPrimaryKey(Integer detailid);

    int updateByPrimaryKeySelective(Userdetail record);

    int updateByPrimaryKey(Userdetail record);

	List<Userdetail> getAll();
}