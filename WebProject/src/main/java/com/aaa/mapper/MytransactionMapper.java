package com.aaa.mapper;

import java.util.List;
import java.util.Map;


import tk.mybatis.mapper.common.Mapper;

public interface MytransactionMapper extends Mapper<Integer>{
	//查询我发起的事务根据库名字和用户
	List<Map> getRightData(Map map);

}
