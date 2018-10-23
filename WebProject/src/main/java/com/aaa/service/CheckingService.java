package com.aaa.service;

import java.util.List;

import com.aaa.bean.Checking;

public interface CheckingService {
	
    List<Checking> getAll();
	
	void save(Checking checking);
	
	Checking getOne(Integer id);
}
