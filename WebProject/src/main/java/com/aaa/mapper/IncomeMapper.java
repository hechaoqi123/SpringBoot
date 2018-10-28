package com.aaa.mapper;

import org.apache.ibatis.annotations.Select;

import com.aaa.bean.Income;

import tk.mybatis.mapper.common.Mapper;

public interface IncomeMapper extends Mapper<Income>{
    @Select("select sum(money) from income ")
	Integer getTotal();

}
