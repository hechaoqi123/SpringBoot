package com.aaa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aaa.base.BaseServiceImpl;
import com.aaa.bean.Income;
import com.aaa.mapper.IncomeMapper;

@Service
public class incomeServiceImpl extends BaseServiceImpl<Income> implements IncomeService {
   @Autowired
   IncomeMapper incomeMapper;
	@Override
	public Integer getTotal() {
		return incomeMapper.getTotal();
	}
}
