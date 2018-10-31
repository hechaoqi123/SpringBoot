package com.aaa.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.aaa.bean.Overtime;
import com.aaa.bean.Recruit;

import tk.mybatis.mapper.common.Mapper;

public interface RecruitMapper extends Mapper<Recruit>{
    @Select("select max(recruitid) from recruit")
	String getMaxId();
}