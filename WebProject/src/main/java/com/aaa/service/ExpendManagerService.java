package com.aaa.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.aaa.bean.Expendmanager;

public interface ExpendManagerService {

	void save(Expendmanager entity);

	List<Expendmanager> getAll();

}