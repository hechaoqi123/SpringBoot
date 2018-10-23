package com.aaa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.bean.Users;
import com.aaa.bean.Userstowmodile;
import com.aaa.mapper.UserstowmodileMapper;
@Service
public class UserstowmodileServiceImpl implements UserstowmodileService {
	@Autowired
	UserstowmodileMapper mapper;
	@Override
	public int insert(Userstowmodile record) {
		return mapper.insert(record);
	}

	@Override
	public int insertSelective(Userstowmodile record) {
		int insertSelective = mapper.insertSelective(record);
		return insertSelective;
	}

	@Override
	public List<Users> getTwoUsers(Integer mTowId) {
		List<Users> twoUsers = mapper.getTwoUsers(mTowId);
		return twoUsers;
	}

	@Override
	public int delUserstowmodile(Userstowmodile record) {
		return mapper.delete(record);
	}

}
