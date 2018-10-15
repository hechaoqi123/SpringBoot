package com.aaa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.bean.Userdetail;
import com.aaa.mapper.UserdetailMapper;
@Service
public class UserdetailServiceImpl implements UserdetailService{
    @Autowired
    UserdetailMapper mapper;
	
	@Override
	public List<Userdetail> getAllUserdetail() {

		return mapper.getAllUserdetail();
	}

}
