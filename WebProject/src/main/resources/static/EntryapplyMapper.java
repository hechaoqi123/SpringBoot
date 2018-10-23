package com.aaa.mapper;

import java.util.List;

import com.aaa.bean.Dimission;
import com.aaa.bean.Entryapply;

import tk.mybatis.mapper.common.Mapper;

public interface EntryapplyMapper extends Mapper<Entryapply> {
    int deleteByPrimaryKey(Integer applyid);

    int insert(Entryapply record);

    int insertSelective(Entryapply record);

    Entryapply selectByPrimaryKey(Integer applyid);

    int updateByPrimaryKeySelective(Entryapply record);

    int updateByPrimaryKey(Entryapply record);

    List<Entryapply> getAll();
}