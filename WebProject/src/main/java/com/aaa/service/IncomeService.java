package com.aaa.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.aaa.base.BaseService;
import com.aaa.bean.Income;

public interface IncomeService extends BaseService<Income>{

	Integer getTotal();

}