package com.aaa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aaa.base.BaseServiceImpl;
import com.aaa.bean.Expendmanager;
import com.aaa.mapper.ExpendmanagerMapper;

@Service
public class ExpendManagerServiceImpl extends BaseServiceImpl<Expendmanager> implements ExpendManagerService {
    @Autowired
    ExpendmanagerMapper expendMapper;
	@Override
	public Integer getTotal() {
		return expendMapper.getTotal();
	}

}
