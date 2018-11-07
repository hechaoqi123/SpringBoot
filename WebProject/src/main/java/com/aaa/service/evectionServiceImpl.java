package com.aaa.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aaa.base.BaseServiceImpl;
import com.aaa.bean.Approval;
import com.aaa.bean.Evection;
import com.aaa.mapper.ApprovalMapper;
import com.aaa.mapper.EvectionMapper;
import com.aaa.mapper.OfficialMapper;
@Service
public class evectionServiceImpl extends BaseServiceImpl<Evection> implements evectionService {
    @Autowired
    ApprovalMapper approval;
    @Autowired
    EvectionMapper evectionMapper;
    @Transactional
	@Override
	public void UpdateAndRemark(Evection evection, String remark) {
		 Approval appro=new Approval();
		 appro.setUserid(evection.getApplypeople());
		 appro.setItemid(evection.getEvectionid().toString());
		 appro.setItemname("出差申请");
		 evection.setApplypeople(null);//不更改此属性
		 mapper.updateByPrimaryKeySelective(evection);
		 //0 3 1 2 4 5 
		 if(evection.getStatus().equals("主管审批报告")){
			 appro.setSequence(2);
		 }
		 if(evection.getStatus().equals("领导审批")){
		     appro.setSequence(3);
		 }
		 if(evection.getStatus().equals("填写出差报告")){
			 appro.setSequence(1);
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
	@Transactional
	public void saveAndApproval(Evection evection) {
		evectionMapper.insert(evection);
		 Approval appro=new Approval();
		 appro.setUserid(evection.getApplypeople());
		 appro.setItemid(evectionMapper.getMaxId().toString());
		 appro.setItemname("出差申请");
		 appro.setSequence(0);
		 appro.setApprovaldate(new Date());
		approval.insert(appro);
	}

}
