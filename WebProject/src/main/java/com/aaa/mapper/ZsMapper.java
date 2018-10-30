package com.aaa.mapper;

import java.util.List;
import java.util.Map;

import com.aaa.bean.Zs;

import tk.mybatis.mapper.common.Mapper;

public interface ZsMapper extends Mapper<Zs>{
	public void getAddzs(Zs zs);
	
	public List<Map> getAllZs();
	
	/*public List<Map> getAllone2( String name);*/
	public List<Map> getAllhf(String name);

}
