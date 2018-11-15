package com.aaa.mapper;

import java.util.List;
import java.util.Map;

import com.aaa.bean.Carinsurance;

import tk.mybatis.mapper.common.Mapper;

public interface CarinsuranceMapper extends Mapper<Carinsurance>{
	public List<Map> getAll();

}
