package com.aaa.service;

import java.util.List;

import com.aaa.bean.Overtime;

public interface OvertimeService {
	List<Overtime> getAll();
	
	void save(Overtime overtime);
}
