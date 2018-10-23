package com.aaa.service;

import java.util.List;

import com.aaa.bean.Official;

public interface OfficialService {

	List<Official> getAll();
	
	void save(Official official);

}
