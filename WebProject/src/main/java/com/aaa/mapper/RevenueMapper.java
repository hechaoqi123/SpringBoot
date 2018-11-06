package com.aaa.mapper;

import org.apache.ibatis.annotations.Select;

import com.aaa.bean.Revenue;

import tk.mybatis.mapper.common.Mapper;

public interface RevenueMapper extends Mapper<Revenue>{
    @Select("select min(max) from revenue")
	Integer getThreshold();

}
