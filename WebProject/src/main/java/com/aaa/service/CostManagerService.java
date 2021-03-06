package com.aaa.service;

import java.util.List;

import com.aaa.base.BaseService;
import com.aaa.bean.Cost;
import com.aaa.bean.CostManager;
import com.aaa.bean.Evection;

public interface CostManagerService extends BaseService<CostManager>{

	void saveCostManager(CostManager cost, List<Cost> costs);

	void UpdateAndRemark(CostManager recruit, String remark);


}