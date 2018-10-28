package com.aaa.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.aaa.bean.Leaveapply;
import com.aaa.bean.Official;
import com.aaa.bean.Recruit;

import tk.mybatis.mapper.common.Mapper;

public interface OfficialMapper extends Mapper<Official>{
    @Select("select max(officialid) from official")
	Integer getMaxId();

}