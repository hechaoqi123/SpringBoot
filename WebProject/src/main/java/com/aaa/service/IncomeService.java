package com.aaa.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.aaa.bean.Income;

public interface IncomeService {

	void save(Income income);

	List<Income> getAll();

}