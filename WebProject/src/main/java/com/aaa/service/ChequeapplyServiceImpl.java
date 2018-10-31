package com.aaa.service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aaa.base.BaseServiceImpl;
import com.aaa.bean.Approval;
import com.aaa.bean.Chequeapply;
import com.aaa.bean.CostManager;
import com.aaa.mapper.ApprovalMapper;
import com.aaa.mapper.ChequeapplyMapper;
import com.aaa.mapper.DimissionMapper;
@Service
public class ChequeapplyServiceImpl extends BaseServiceImpl<Chequeapply> implements ChequeapplySevice{
    @Autowired
    ApprovalMapper approval;
    @Autowired
    ChequeapplyMapper  chequeapply;
    @Transactional
	@Override
	public void UpdateAndRemark(Chequeapply recruit, String remark) {
		 Approval appro=new Approval();
		 appro.setUserid(recruit.getApplyname());
		 appro.setItemid(recruit.getChequeid().toString());
		 appro.setItemname("开票申请");
		 recruit.setApplyname(null);//不更改此属性
		 mapper.updateByPrimaryKeySelective(recruit);
		 if(recruit.getStatus().equals("领导审批")){
			 appro.setSequence(1);
		 }
		 if(recruit.getStatus().equals("财务处理")){
			 appro.setSequence(2);
		 }
		 if(recruit.getStatus().equals("填单人知悉")){
			 appro.setSequence(3);
		 }
		 if(recruit.getStatus().equals("结束")){
		 appro.setSequence(4);
		 }
		 if(recruit.getStatus().equals("驳回")){
			 appro.setSequence(5);
		 }
		 appro.setRemark(remark);
		 appro.setApprovaldate(new Date());
		 approval.insert(appro);
		
	}
    @Transactional
	@Override
	public void saveAndApproval(Chequeapply leave) {
		 this.chequeapply.insert(leave);
		 Approval appro=new Approval();
		 appro.setUserid(leave.getApplyname());
		 appro.setItemid(this.chequeapply.getMaxId().toString());
		 appro.setItemname("开票申请");
		 appro.setSequence(0);
		 appro.setApprovaldate(new Date());
		approval.insert(appro);
		
	}

}
