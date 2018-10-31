package com.aaa.mapper;

import org.apache.ibatis.annotations.Select;

import com.aaa.bean.Performance;

import tk.mybatis.mapper.common.Mapper;

public interface PerformanceMapper extends Mapper<Performance> {
    @Select("select max(performanceid) from performance")
	Integer getMaxId();

}
