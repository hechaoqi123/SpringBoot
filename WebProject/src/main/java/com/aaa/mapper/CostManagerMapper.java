package com.aaa.mapper;

import org.apache.ibatis.annotations.Select;

import com.aaa.bean.CostManager;

import tk.mybatis.mapper.common.Mapper;

public interface CostManagerMapper extends Mapper<CostManager>{
   @Select("select max(costid) from cost_manager")
	Integer getMaxID();
}
