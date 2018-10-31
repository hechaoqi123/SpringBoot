package com.aaa.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aaa.bean.Usersandmytransaction;
import com.aaa.bean.Visitonemodile;
import com.aaa.bean.Visittwomodile;
import com.aaa.mapper.DuthorityManagementMapper;
@Service
public class DuthorityManagementServiceImpl implements DuthorityManagementService {
	@Autowired
	DuthorityManagementMapper mapper;
	@Transactional
	@Override
	public void insertVisitonemodile(Visitonemodile visitonemodile) {
		mapper.insertVisitonemodile(visitonemodile);
	}
	@Override
	public List<Map> selectVisitonemodile(Integer uid) {
		return mapper.selectVisitonemodile(uid);
	}
	@Transactional
	@Override
	public int insert(Visittwomodile record) {
		return mapper.insert(record);
	}
	@Override
	public List<Map> selectVisittwomodile(Integer mOneId) {
		return mapper.selectVisittwomodile(mOneId);
	}
	@Override
	public List<Map> selectUserTowModile(Integer uid) {
		return mapper.selectUserTowModile(uid);
	}
	@Override
	public List<Map> selectOneMTowModile(Integer uid) {
		return mapper.selectOneMTowModile(uid);
	}
	//根据父级菜单查询对应的事务
	@Override
	public List<Map> getMytransaction(Map map) {
		return mapper.getMytransaction(map);
	}
	
	@Override
	public List<Map> TrueTran(Map map) {
		return mapper.TrueTran(map);
	}
	@Override
	public List<Map> FalseTran(Map map) {
		return mapper.FalseTran(map);
	}
	@Override
	public int addTran(Usersandmytransaction uat) {
		return mapper.addTran(uat);
	}
	@Override
	public int delTran(Usersandmytransaction uat) {
		return mapper.delTran(uat);
	}

}
