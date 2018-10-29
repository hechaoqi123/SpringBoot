package com.aaa.mapper;


import org.apache.ibatis.annotations.Select;

import com.aaa.bean.Expendmanager;

import tk.mybatis.mapper.common.Mapper;

public interface ExpendmanagerMapper extends Mapper<Expendmanager>{
    @Select("select sum(money) from expendmanager")
	Integer getTotal();

}
