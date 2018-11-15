package com.aaa.mapper;

import java.util.List;
import java.util.Map;

import com.aaa.bean.Carapply;

import tk.mybatis.mapper.common.Mapper;

public interface CarapplyMapper extends Mapper<Carapply> {
	public List<Map> getDept();
	public List<Map> getCar();
	public List<Map> getCarapplyDept();
	public List<Map> getCarapplyCar();

}
