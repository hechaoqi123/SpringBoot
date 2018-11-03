package com.aaa.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aaa.base.BaseServiceImpl;
import com.aaa.bean.Approval;
import com.aaa.bean.Overtime;
import com.aaa.mapper.ApprovalMapper;
import com.aaa.mapper.OvertimeMapper;
@Service
public class OvertimeServiceImpl extends BaseServiceImpl<Overtime> implements OvertimeService {
    @Autowired
    OvertimeMapper mapper;
    @Autowired
    ApprovalMapper approval;
    @Transactional
	@Override
	public void UpdateAndRemark(Overtime evection, String remark) {
		 Approval appro=new Approval();
		 appro.setUserid(evection.getApplypeople());
		 appro.setItemid(evection.getOvertimeid().toString());
		 appro.setItemname("加班申请");
		 evection.setApplypeople(null);//不更改此属性
		 mapper.updateByPrimaryKeySelective(evection);
		 if(evection.getStatus().equals("领导审批")){
			 appro.setSequence(1);
		 }
		 if(evection.getStatus().equals("人事处理")){
			 appro.setSequence(2);
		 }
		 if(evection.getStatus().equals("结束")){
			 appro.setSequence(3);
			 }
		 if(evection.getStatus().equals("驳回")){
			 appro.setSequence(5);
		 }
		 appro.setRemark(remark);
		 appro.setApprovaldate(new Date());
		 approval.insert(appro);
		
	}
    @Transactional
	@Override
	public void saveAndApproval(Overtime overtime) {
	 	this.mapper.insert(overtime);
		 Approval appro=new Approval();
		 appro.setUserid(overtime.getApplypeople());
		 appro.setItemid(this.mapper.getMaxId().toString());
		 appro.setItemname("加班申请");
		 appro.setSequence(0);
		 appro.setApprovaldate(new Date());
		 approval.insert(appro);
		
	}

}
