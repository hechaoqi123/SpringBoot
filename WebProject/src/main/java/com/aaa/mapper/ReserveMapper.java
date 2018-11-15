 package com.aaa.mapper;


import java.util.List;
import java.util.Map;

import com.aaa.bean.Reserve;

import tk.mybatis.mapper.common.Mapper;

public interface ReserveMapper extends Mapper<Reserve>{
	public List<Map> getDept();
	public List<Map> getMetting();
	public List<Map> getReserveDept();
}
