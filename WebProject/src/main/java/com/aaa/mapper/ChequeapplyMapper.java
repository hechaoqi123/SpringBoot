package com.aaa.mapper;

import org.apache.ibatis.annotations.Select;

import com.aaa.bean.Chequeapply;

import tk.mybatis.mapper.common.Mapper;

public interface ChequeapplyMapper extends Mapper<Chequeapply> {
    @Select("select max(chequeid) from chequeapply")
	Integer getMaxId();

}
