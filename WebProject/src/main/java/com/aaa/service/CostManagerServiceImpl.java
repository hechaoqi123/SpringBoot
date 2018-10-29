package com.aaa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aaa.base.BaseServiceImpl;
import com.aaa.bean.Cost;
import com.aaa.bean.CostManager;
import com.aaa.mapper.CostManagerMapper;
import com.aaa.mapper.CostMapper;

@Service
public class CostManagerServiceImpl extends BaseServiceImpl<CostManager> implements CostManagerService {
    @Autowired  
    CostManagerMapper costManagerMapper;
    @Autowired
    CostMapper costMapper;
	//费用报销、及报销项添加
	@Transactional
	@Override
	public void saveCostManager(CostManager cost, List<Cost> costs) {
		//添加报销申请单
		mapper.insert(cost);
		//获取申请单ID
		Integer id=costManagerMapper.getMaxID();
		//添加报销项
		for (Cost record : costs) {
		  boolean isNotNull=record.getField1()!=null||record.getField2()!=null||record.getField3()!=null||record.getField4()!=null||record.getField5()!=null;
		  if(isNotNull)
			record.setManagerid(id);
			costMapper.insert(record);
		  }
	} 
  
}
