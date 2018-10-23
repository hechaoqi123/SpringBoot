package com.aaa.mapper;

import java.util.List;

import com.aaa.bean.Recruit;
import com.aaa.bean.transfer;

import tk.mybatis.mapper.common.Mapper;

public interface transferMapper extends Mapper<transfer>{
    int deleteByPrimaryKey(Integer transferid);

    int insert(transfer record);

    int insertSelective(transfer record);

    transfer selectByPrimaryKey(Integer transferid);

    int updateByPrimaryKeySelective(transfer record);

    int updateByPrimaryKey(transfer record);
    
    List<transfer> getAll();
}