package com.aaa.service;

import java.util.List;

import com.aaa.bean.CostManager;

public interface CostManagerService {

	void save(CostManager entity);

	List<CostManager> getAll();

}