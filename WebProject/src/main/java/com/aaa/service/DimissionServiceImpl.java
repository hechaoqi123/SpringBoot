package com.aaa.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.base.BaseServiceImpl;
import com.aaa.bean.Approval;
import com.aaa.bean.Dimission;
import com.aaa.mapper.ApprovalMapper;
import com.aaa.mapper.DimissionMapper;
import com.aaa.mapper.OfficialMapper;
@Service
public class DimissionServiceImpl extends BaseServiceImpl<Dimission> implements DimissionService {
    @Autowired
    ApprovalMapper approval;
    @Autowired
    DimissionMapper dimission;
	@Override
	public void saveAndApproval(Dimission dimission) {
		 this.dimission.insert(dimission);
		 Approval appro=new Approval();
		 appro.setUserid(dimission.getDimissionname());
		 appro.setItemid(this.dimission.getMaxId().toString());
		 appro.setItemname("离职申请");
		 appro.setSequence(0);
		 appro.setApprovaldate(new Date());
		approval.insert(appro);
		
	}

	@Override
	public void UpdateAndRemark(Dimission recruit, String remark) {
		 Approval appro=new Approval();
		 appro.setUserid(recruit.getDimissionname());
		 appro.setItemid(recruit.getDimissionid().toString());
		 appro.setItemname("离职申请");
		 recruit.setDimissionname(null);//不更改此属性
		 mapper.updateByPrimaryKeySelective(recruit);
		 if(recruit.getStatus().equals("领导审批")){
			 appro.setSequence(1);
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

}
