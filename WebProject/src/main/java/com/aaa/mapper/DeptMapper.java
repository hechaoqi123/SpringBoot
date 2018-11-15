package com.aaa.mapper;


import org.apache.ibatis.annotations.Param;

import com.aaa.bean.Dept;

import tk.mybatis.mapper.common.Mapper;

public interface DeptMapper extends Mapper<Dept>{
	public void updateHuiOne(@Param("contracqq") String contracqq, @Param("cid") Integer cid);
}
