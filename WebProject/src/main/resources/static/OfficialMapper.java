package com.aaa.mapper;

import java.util.List;

import com.aaa.bean.Leaveapply;
import com.aaa.bean.Official;
import com.aaa.bean.Recruit;

import tk.mybatis.mapper.common.Mapper;

public interface OfficialMapper extends Mapper<Official>{
    int deleteByPrimaryKey(Integer officialid);

    int insert(Official record);

    int insertSelective(Official record);

    Official selectByPrimaryKey(Integer officialid);

    int updateByPrimaryKeySelective(Official record);

    int updateByPrimaryKey(Official record);

	List<Official> getAll();

}