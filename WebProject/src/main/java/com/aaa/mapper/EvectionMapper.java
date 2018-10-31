package com.aaa.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.aaa.bean.Entryapply;
import com.aaa.bean.Evection;

import tk.mybatis.mapper.common.Mapper;

public interface EvectionMapper extends Mapper<Evection>{
    @Select("select max(evectionid) from evection")
	Integer getMaxId();
}