package com.aaa.mapper;

import java.util.List;

import com.aaa.bean.Userdetail;
import com.aaa.bean.transfer;

import tk.mybatis.mapper.common.Mapper;

public interface UserdetailMapper extends Mapper<Userdetail>{
    int deleteByPrimaryKey(Integer detailid);

    int insert(Userdetail record);

    int insertSelective(Userdetail record);

    Userdetail selectByPrimaryKey(Integer detailid);

    int updateByPrimaryKeySelective(Userdetail record);

    int updateByPrimaryKey(Userdetail record);

	List<Userdetail> getAll();

	List<Userdetail> queryByCriteria(String status);
}