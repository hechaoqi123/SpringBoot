package com.aaa.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aaa.base.BaseServiceImpl;
import com.aaa.bean.Approval;
import com.aaa.bean.Entryapply;
import com.aaa.mapper.ApprovalMapper;
import com.aaa.mapper.EntryapplyMapper;
@Service
public class EntryapplyServiceImpl extends BaseServiceImpl<Entryapply> implements EntryapplyService {
    @Autowired
    EntryapplyMapper mapper;
	@Autowired
     ApprovalMapper approval;
	@Transactional
	@Override
	public void saveAndApproval(Entryapply entryapply) {
		mapper.insert(entryapply);
		 Approval appro=new Approval();
		 appro.setUserid(entryapply.getApplypeople());
		 appro.setItemid(this.mapper.getMaxId().toString());
		 appro.setItemname("入职申请");
		 appro.setSequence(0);
		 appro.setApprovaldate(new Date());
		approval.insert(appro);
	}
	@Transactional
	@Override
	public void UpdateAndRemark(Entryapply apply, String remark) {
		 Approval appro=new Approval();
		 appro.setUserid(apply.getApplypeople());
		 appro.setItemid(apply.getApplyid().toString());
		 appro.setItemname("入职申请");
		 apply.setApplypeople(null);//不更改此属性
		 mapper.updateByPrimaryKeySelective(apply);
		 if(apply.getStatus().equals("领导审批")){
			 appro.setSequence(1);
		 }
		 if(apply.getStatus().equals("结束")){
		 appro.setSequence(2);
		 }
		 if(apply.getStatus().equals("驳回")){
			 appro.setSequence(5);
		 }
		 appro.setRemark(remark);
		 appro.setApprovaldate(new Date());
		 approval.insert(appro);
		
	}

}
