package com.aaa.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.bean.Client;
import com.aaa.mapper.ClientMapper;
@Service
public class ClientServiceImpl implements ClientService{
	@Autowired
	ClientMapper mapper;
	@Override
	public void insert(Client c) {
		mapper.insert(c);
	}
	@Override
	public Client getone(Integer cid) {
		return mapper.selectByPrimaryKey(cid);
	}
	@Override
	public void update(Client c) {
		mapper.updateByPrimaryKeySelective(c);
		
	}
	@Override
	public List<Client> select() {
		return mapper.selectAll();
	}
	@Override
	public void delete(Integer cid) {
		mapper.deleteByPrimaryKey(cid);
	}
	@Override
	public List<Map> selectDim(String key) {
		return mapper.selectDim(key);
	}
	@Override
	public List<Client> selectAll() {
		return mapper.selectAll();
	}

}
