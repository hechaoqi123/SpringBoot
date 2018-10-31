package com.aaa.mapper;

import java.util.List;
import java.util.Map;

import com.aaa.bean.Krar;
import com.aaa.bean.Task;

import tk.mybatis.mapper.common.Mapper;

public interface TaskMapper extends Mapper<Task> {
	public List<Map> query(String name);
	public List<Map> querytwo();
	public void add(Task task);
	public void addone(Krar krar);
	public List<Map> selectall(String rwfl);
	public List<Map<String, String>> getOne(int id);
}
