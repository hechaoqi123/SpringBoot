package com.aaa.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aaa.base.BaseServiceImpl;
import com.aaa.bean.Approval;
import com.aaa.bean.Performance;
import com.aaa.mapper.ApprovalMapper;
import com.aaa.mapper.PerformanceMapper;

@Service
public class PerformanceServiceImpl extends BaseServiceImpl<Performance> implements PerformanceService {
	@Autowired
	PerformanceMapper mapper;
    @Autowired
    ApprovalMapper approval;
    @Transactional
	@Override
	public void UpdateAndRemark(Performance evection, String remark) {
		 Approval appro=new Approval();
		 appro.setUserid(evection.getApplypeople());
		 appro.setItemid(evection.getPerformanceid().toString());
		 appro.setItemname("绩效考核");
		 evection.setApplypeople(null);//不更改此属性
		 mapper.updateByPrimaryKeySelective(evection);
		 if(evection.getStatus().equals("领导审批")){
			 appro.setSequence(1);
		 }
		 if(evection.getStatus().equals("人事复核")){
			 appro.setSequence(2);
		 }
		 if(evection.getStatus().equals("填单人知悉")){
			 appro.setSequence(3);
			 }
		 if(evection.getStatus().equals("结束")){
			 appro.setSequence(4);
		 }
		 appro.setRemark(remark);
		 appro.setApprovaldate(new Date());
		 approval.insert(appro);

		
	}
    @Transactional
	@Override
	public void saveAndApproval(Performance overtime) {
		 this.mapper.insert(overtime);
		 Approval appro=new Approval();
		 appro.setUserid(overtime.getApplypeople());
		 appro.setItemid(this.mapper.getMaxId().toString());
		 appro.setItemname("绩效考核");
		 appro.setSequence(0);
		 appro.setApprovaldate(new Date());
		 approval.insert(appro);
		
	}
}
