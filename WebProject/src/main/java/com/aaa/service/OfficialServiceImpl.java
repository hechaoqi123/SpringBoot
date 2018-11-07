package com.aaa.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

import com.aaa.base.BaseServiceImpl;
import com.aaa.bean.Approval;
import com.aaa.bean.Official;
import com.aaa.bean.Recruit;
import com.aaa.mapper.ApprovalMapper;
import com.aaa.mapper.OfficialMapper;
@Service
public class OfficialServiceImpl extends BaseServiceImpl<Official> implements OfficialService {
    @Autowired
    ApprovalMapper approval;
    @Autowired
    OfficialMapper off;
	@Override
	public void UpdateAndRemark(Official recruit, String remark) {
		 Approval appro=new Approval();
		 appro.setUserid(recruit.getProposer());
		 appro.setItemid(recruit.getOfficialid().toString());
		 appro.setItemname("转正申请");
		 recruit.setProposer(null);//不更改此属性
		 mapper.updateByPrimaryKeySelective(recruit);
		 if(recruit.getStatus().equals("领导审批")){
			 appro.setSequence(1);
		 }
		 if(recruit.getStatus().equals("人事处理")){
			 appro.setSequence(3);
		 }
		 if(recruit.getStatus().equals("填单人知悉")){
			 //发放邮件
			 appro.setSequence(4);
		 }
		 if(recruit.getStatus().equals("结束")){
		 appro.setSequence(2);
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
	public void saveAndApproval(Official office) {
		 off.insert(office);
		 Approval appro=new Approval();
		 appro.setUserid(office.getProposer());
		 appro.setItemid(off.getMaxId().toString());
		 appro.setItemname("转正申请");
		 appro.setSequence(0);
		 appro.setApprovaldate(new Date());
		approval.insert(appro);
	}
		

}
