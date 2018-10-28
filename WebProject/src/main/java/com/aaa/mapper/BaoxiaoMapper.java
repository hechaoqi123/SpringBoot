package com.aaa.mapper;

import org.apache.ibatis.annotations.Select;

import com.aaa.bean.Baoxiao;

import tk.mybatis.mapper.common.Mapper;

public interface BaoxiaoMapper extends Mapper<Baoxiao>{
	@Select("select max(baoxiaoid) from baoxiao")
   public Integer getMaxId();
}
