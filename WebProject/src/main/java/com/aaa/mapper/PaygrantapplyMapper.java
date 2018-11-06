package com.aaa.mapper;

import org.apache.ibatis.annotations.Select;

import com.aaa.bean.Paygrantapply;

import tk.mybatis.mapper.common.Mapper;

public interface PaygrantapplyMapper extends Mapper<Paygrantapply>{
    @Select("select max(applyid) from paygrantapply")
	Integer getMaxId();

}
