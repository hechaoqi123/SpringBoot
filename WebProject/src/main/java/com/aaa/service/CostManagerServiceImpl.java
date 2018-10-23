package com.aaa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.bean.CostManager;
import com.aaa.mapper.CostManagerMapper;

@Service
public class CostManagerServiceImpl implements CostManagerService {
  @Autowired
  CostManagerMapper mapper;
  @Override
  public void save(CostManager entity){
	  mapper.insert(entity);
  }
  @Override
  public List<CostManager> getAll(){
	return mapper.selectAll();
  }
  
}
