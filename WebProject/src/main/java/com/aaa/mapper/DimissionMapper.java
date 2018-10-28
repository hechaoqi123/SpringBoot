package com.aaa.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.aaa.bean.Dept;
import com.aaa.bean.Dimission;

import tk.mybatis.mapper.common.Mapper;

public interface DimissionMapper  extends Mapper<Dimission>{
	@Select("select max(dimissionid) from dimission")
	public Integer getMaxId();
}