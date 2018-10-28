package com.aaa.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.bean.Users;
import com.aaa.mapper.UsersMapper;
@Service
public class UsersServiceImpl implements UsersService{
	@Autowired
	UsersMapper mapper;
	@Override
	public Users getOneUsers(Users record) {
		Users oneUsers = mapper.getOneUsers(record);
		return oneUsers;
	}
	@Override
	public Users selectByPrimaryKey(Integer uid) {
		return mapper.selectByPrimaryKey(uid);
	}
	@Override
	public List<Users> getAlluser() {
		return mapper.getAlluser();
	}
	@Override
	public List<Users> alootTrueUser(Map map) {
		// TODO Auto-generated method stub
		return mapper.alootTrueUser(map);
	}
	@Override
	public List<Users> alootFalseUser(Map map) {
		return mapper.alootFalseUser(map);
	}
	@Override
	public List<Users> postTrueUser(Map map) {
		return mapper.postTrueUser(map);
	}
	@Override
	public List<Users> postFalseUser(Map map) {
		return mapper.postFalseUser(map);
	}
	@Override
	public List<Map> getOneUserDetails(Integer uid) {
		return mapper.getOneUserDetails(uid);
	}
	@Override
	public int updateByPrimaryKeySelective(Users record) {
		return mapper.updateByPrimaryKeySelective(record);
	}
}
