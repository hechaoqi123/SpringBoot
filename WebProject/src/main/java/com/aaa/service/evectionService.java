package com.aaa.service;

import java.util.List;

import com.aaa.bean.Evection;
import com.aaa.bean.Official;

public interface evectionService {
	List<Evection> getAll();
	
	void save(Evection evection);
}
