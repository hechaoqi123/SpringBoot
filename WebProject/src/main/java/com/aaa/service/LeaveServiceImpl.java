package com.aaa.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.base.BaseServiceImpl;
import com.aaa.bean.Approval;
import com.aaa.bean.Leaveapply;
import com.aaa.mapper.ApprovalMapper;
import com.aaa.mapper.LeaveMapper;

@Service
public class LeaveServiceImpl extends BaseServiceImpl<Leaveapply> implements LeaveService {
   @Autowired
   LeaveMapper mapper;
   @Autowired
   ApprovalMapper approval;
	@Override
	public void UpdateAndRemark(Leaveapply evection, String remark) {
		 Approval appro=new Approval();
		 appro.setUserid(evection.getApplydate());
		 appro.setItemid(evection.getLeaveid().toString());
		 appro.setItemname("请休假申请");
		 evection.setApplydate(null);//不更改此属性
		 mapper.updateByPrimaryKeySelective(evection);
		 if(evection.getStatus().equals("领导审批")){
			 appro.setSequence(1);
		 }
		 if(evection.getStatus().equals("人事处理")){
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
	@Override
	public void saveAndApproval(Leaveapply leave) {
		this.mapper.insert(leave);
		 Approval appro=new Approval();
		 appro.setUserid(leave.getApplydate());
		 appro.setItemid(this.mapper.getMaxId().toString());
		 appro.setItemname("请休假申请");
		 appro.setSequence(0);
		 appro.setApprovaldate(new Date());
		 approval.insert(appro);
		
	}
}
