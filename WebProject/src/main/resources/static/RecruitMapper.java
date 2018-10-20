package com.aaa.mapper;

import java.util.List;

import com.aaa.bean.Overtime;
import com.aaa.bean.Recruit;

import tk.mybatis.mapper.common.Mapper;

public interface RecruitMapper extends Mapper<Recruit>{
    int deleteByPrimaryKey(Integer recruitid);

    int insert(Recruit record);

    int insertSelective(Recruit record);

    Recruit selectByPrimaryKey(Integer recruitid);

    int updateByPrimaryKeySelective(Recruit record);

    int updateByPrimaryKey(Recruit record);

	List<Recruit> getAll();
}