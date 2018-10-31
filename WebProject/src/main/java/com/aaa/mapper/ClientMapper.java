package com.aaa.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.aaa.bean.Client;

import tk.mybatis.mapper.common.Mapper;

public interface ClientMapper extends Mapper<Client>{
    public List<Map> selectDim(@Param("key") String key);

}