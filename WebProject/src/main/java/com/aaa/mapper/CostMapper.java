package com.aaa.mapper;

import org.apache.ibatis.annotations.Select;

import com.aaa.bean.Cost;

import tk.mybatis.mapper.common.Mapper;

public interface CostMapper extends Mapper<Cost> {
    @Select("select max(costid) from cost_manager")
	Integer getMaxId();

}
