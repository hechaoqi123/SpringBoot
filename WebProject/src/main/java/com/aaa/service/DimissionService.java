package com.aaa.service;

import java.util.List;

import com.aaa.bean.Dimission;

public interface DimissionService {
    List<Dimission> getAll();
	
	void save(Dimission dimission);
}
