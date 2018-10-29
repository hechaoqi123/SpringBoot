package com.aaa.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.aaa.bean.Recruit;
import com.aaa.bean.transfer;

import tk.mybatis.mapper.common.Mapper;

public interface transferMapper extends Mapper<transfer>{
    @Select("select max(transferid) from transfer")
	Integer getMaxId();
}