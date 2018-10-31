package com.aaa.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aaa.base.BaseServiceImpl;
import com.aaa.bean.Approval;
import com.aaa.bean.transfer;
import com.aaa.mapper.ApprovalMapper;
import com.aaa.mapper.transferMapper;
@Service
public class transferServiceImpl extends BaseServiceImpl<transfer> implements TransferService {
    @Autowired
    transferMapper  transfer;
	@Autowired
	ApprovalMapper approval;
	@Override
	public void UpdateAndRemark(transfer transfer, String remark) {
		 Approval appro=new Approval();
		 appro.setUserid(transfer.getApplypeople());
		 appro.setItemid(transfer.getTransferid().toString());
		 appro.setItemname("岗位调动申请");
		 transfer.setApplypeople(null);
		 mapper.updateByPrimaryKeySelective(transfer);
		 if(transfer.getStatus().equals("新主管审批")){
			 appro.setSequence(1);
		 }
		 if(transfer.getStatus().equals("领导审批")){
			 appro.setSequence(2);
		 }
		 if(transfer.getStatus().equals("结束")){
		 appro.setSequence(3);
		 }
		 if(transfer.getStatus().equals("驳回")){
			 appro.setSequence(5);
		 }
		 appro.setRemark(remark);
		 appro.setApprovaldate(new Date());
		 approval.insert(appro);
	}
    @Transactional
	@Override
	public void saveAndApproval(transfer transfer) {
    	 this.transfer.insert(transfer);
		 Approval appro=new Approval();
		 appro.setUserid(transfer.getApplypeople());
		 appro.setItemid(this.transfer.getMaxId().toString());
		 appro.setItemname("岗位调动申请");
		 appro.setSequence(0);
		 appro.setApprovaldate(new Date());
		approval.insert(appro);
	}
  

}
