package com.aaa.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.bean.Itinfor;
import com.aaa.mapper.ItinforMapper;
@Service
public class ItinforServiceImpl implements ItinforService{
	@Autowired
	ItinforMapper mapper;
	
	public void itInsert(Itinfor i) {
		mapper.insertSelective(i);
	}

	@Override
	public List<Itinfor> select() {
		return mapper.selectAll();
	}

	@Override
	public List<Map> selectDim(String key) {
		return mapper.selectDim(key);
	}

	@Override
	public List<Map> selectDetailed(Integer iid) {
		return mapper.selectDetailed(iid);
	}

	@Override
	public List<Map> selectState() {
		return mapper.selectState();
	}

	@Override
	public void updateIdState(Integer iid) {
		mapper.updateIdState(iid);
	}

	@Override
	public List<Map> selectMeItinfor(Integer did) {
		return mapper.selectMeItinfor(did);
	}

	@Override
	public void updateIdStateOne(Integer iid) {
		mapper.updateIdStateOne(iid);
	}

	@Override
	public List<Map> selectStateOne() {
		return mapper.selectStateOne();
	}

	@Override
	public void updateIdStateTwo(Integer iid) {
		mapper.updateIdStateTwo(iid);
	}

	@Override
	public List<Map> selectStateTwo() {
		// TODO Auto-generated method stub
		return mapper.selectStateTwo();
	}

	@Override
	public List<Map> selectUsers() {
		return mapper.selectUsers();
	}

	@Override
	public void updateOrganization(Itinfor i) {
		mapper.updateOrganization(i);
	}

	@Override
	public List<Map> selectUsersName() {
		return mapper.selectUsersName();
	}

	@Override
	public void updateItworkplan(Itinfor i) {
		mapper.updateItworkplan(i);
	}

	@Override
	public List<Map> selectMeItinforOne(Integer did) {
		return mapper.selectMeItinforOne(did);
	}

	@Override
	public void updatejg(Integer iid, String itsum) {
		mapper.updatejg(iid, itsum);
	}

}
