package com.aaa.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aaa.base.BaseServiceImpl;
import com.aaa.bean.Approval;
import com.aaa.bean.Cost;
import com.aaa.bean.CostManager;
import com.aaa.bean.Evection;
import com.aaa.mapper.ApprovalMapper;
import com.aaa.mapper.CostManagerMapper;
import com.aaa.mapper.CostMapper;

@Service
public class CostManagerServiceImpl extends BaseServiceImpl<CostManager> implements CostManagerService {
    @Autowired  
    CostManagerMapper costManagerMapper;
    @Autowired
    CostMapper costMapper;
    @Autowired
    ApprovalMapper approval;
	//费用报销、及报销项添加
	@Transactional
	@Override
	public void saveCostManager(CostManager cost, List<Cost> costs) {
		//添加报销申请单
		mapper.insert(cost);
		//获取申请单ID
		Integer id=costManagerMapper.getMaxID();
		 Approval appro=new Approval();
		 appro.setUserid(cost.getUsername());
		 appro.setItemid(costMapper.getMaxId().toString());
		 appro.setItemname("差旅费报销申请");
		 appro.setSequence(0);
		 appro.setApprovaldate(new Date());
		approval.insert(appro);
		//添加报销项
		for (Cost record : costs) {
		  boolean isNotNull=record.getField1()!=null||record.getField2()!=null||record.getField3()!=null||record.getField4()!=null||record.getField5()!=null;
		  boolean isNull=!record.getField1().equals("")||!record.getField2().equals("")||!record.getField3().equals("")||!record.getField4().equals("")||!record.getField5().equals("");
		  if(isNotNull&&isNull)
			record.setManagerid(id);
			costMapper.insert(record);
		  }
	}
	@Override
	public void UpdateAndRemark(CostManager evection, String remark) {
		 Approval appro=new Approval();
		 appro.setUserid(evection.getUsername());
		 appro.setItemid(evection.getCostid().toString());
		 appro.setItemname("差旅费报销申请");
		 evection.setUsername(null);//不更改此属性
		 mapper.updateByPrimaryKeySelective(evection);
		 if(evection.getStatus().equals("领导审批")){
			 appro.setSequence(1);
		 }
		 if(evection.getStatus().equals("财务处理")){
			 appro.setSequence(2);
		 }
		 if(evection.getStatus().equals("填单人知悉")){
		 appro.setSequence(3);
		 }
		 if(evection.getStatus().equals("结束")){
			 appro.setSequence(4);
			 }
		 if(evection.getStatus().equals("驳回")){
			 appro.setSequence(5);
		 }
		 appro.setRemark(remark);
		 appro.setApprovaldate(new Date());
		 approval.insert(appro);
		
	} 
  
}
