package com.aaa.mapper;

import java.util.List;
import java.util.Map;

import com.aaa.bean.Krar;
import com.aaa.bean.Task;

public interface TaskMapper {
	public List<Map> query();
	public List<Map> querytwo();
	public void add(Task task);
	public void addone(Krar krar);
}
