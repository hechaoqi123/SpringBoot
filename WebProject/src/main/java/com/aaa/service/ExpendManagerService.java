package com.aaa.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.aaa.base.BaseService;
import com.aaa.bean.Expendmanager;

public interface ExpendManagerService extends BaseService<Expendmanager>{

	Integer getTotal();


}