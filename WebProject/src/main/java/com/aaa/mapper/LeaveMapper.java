package com.aaa.mapper;

import org.apache.ibatis.annotations.Select;

import com.aaa.bean.Leaveapply;

import tk.mybatis.mapper.common.Mapper;

public interface LeaveMapper extends Mapper<Leaveapply>{
    @Select("select max(leaveid) from leaveapply")
	Integer getMaxId();

}
