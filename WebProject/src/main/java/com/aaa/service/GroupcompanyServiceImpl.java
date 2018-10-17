package com.aaa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.bean.Groupcompany;
import com.aaa.mapper.GroupcompanyMapper;
@Service
public class GroupcompanyServiceImpl implements GroupcompanyService {
	@Autowired
	GroupcompanyMapper mapper;
    public List<Groupcompany> getAllGroupcompany(){
		return mapper.getAllGroupcompany();
	};
}