package com.aaa.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.aaa.bean.Performance;

public interface PerformanceService {

	List<Performance> getAll();

	void save(Performance per);

}