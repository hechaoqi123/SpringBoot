package com.aaa.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.aaa.bean.Dimission;
import com.aaa.bean.Entryapply;

import tk.mybatis.mapper.common.Mapper;

public interface EntryapplyMapper extends Mapper<Entryapply> {
	@Select("select max(applyid) from entryapply")
	Integer getMaxId();
}