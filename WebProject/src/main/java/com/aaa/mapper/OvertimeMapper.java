package com.aaa.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.aaa.bean.Official;
import com.aaa.bean.Overtime;

import tk.mybatis.mapper.common.Mapper;

public interface OvertimeMapper extends Mapper<Overtime>{
    @Select("select max(overtimeid) from overtime")
	Integer getMaxId();
}