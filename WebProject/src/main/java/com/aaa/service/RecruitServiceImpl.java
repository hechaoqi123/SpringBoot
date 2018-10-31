package com.aaa.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aaa.base.BaseServiceImpl;
import com.aaa.bean.Approval;
import com.aaa.bean.Dimission;
import com.aaa.bean.Entryapply;
import com.aaa.bean.Official;
import com.aaa.bean.Recruit;
import com.aaa.bean.transfer;
import com.aaa.mapper.ApprovalMapper;
import com.aaa.mapper.DimissionMapper;
import com.aaa.mapper.EntryapplyMapper;
import com.aaa.mapper.OfficialMapper;
import com.aaa.mapper.RecruitMapper;
import com.aaa.mapper.transferMapper;
@Service
public class RecruitServiceImpl extends BaseServiceImpl<Recruit> implements RecruitService {
    @Autowired
    RecruitMapper mapper;
    @Autowired
    EntryapplyMapper entry;
    @Autowired 
    OfficialMapper office;
    @Autowired 
    transferMapper transfer;
    @Autowired 
    DimissionMapper Dimission;
    @Autowired
    ApprovalMapper approval;
	//返回人事申请数量
	@Override
	public Integer[] getCount(String status,String oldpart) {//领导审批  总经办
	  Recruit record=new Recruit();
	  Entryapply entryapply=new Entryapply();
	  Official off=new Official();
	  Dimission dim=new Dimission();
	  record.setStatus(status);
	  entryapply.setStatus(status);
	  off.setStatus(status);
	  dim.setStatus(status);
	  //岗位调动申请    
	  transfer tran=new transfer();
	  tran.setOldpart(oldpart);
	  tran.setStatus(status);
	      int total=transfer.selectCount(tran);
       if((status!=null&&status.equals("领导审批"))&&(oldpart!=null&&oldpart.equals("总经办"))){//总经办
    	   transfer entity=new transfer();
    	   entity.setStatus("领导审批");
    	  int count=transfer.selectCount(entity);//状态为领导审批的数量
    	   entity.setStatus("新主管审批");
    	   entity.setNewpart("总经办");
    	  int count2=transfer.selectCount(entity);//状态为新主管审批  新部门为总经办的申请数量
          total=count+count2;
       }else{
    	   if(oldpart!=null&&status!=null){
    		   transfer entity=new transfer();
        	   entity.setStatus("新主管审批");
        	   entity.setNewpart(oldpart);
        	   int count=transfer.selectCount(entity);
        	   total+=count;  
    	   }
       }
		return new Integer[]{mapper.selectCount(record),
				           entry.selectCount(entryapply),
				           office.selectCount(off),
				           total,
				           Dimission.selectCount(dim)
				};
	}
	@Transactional
	@Override
	public void saveAndApproval(Recruit recruit) {
		 mapper.insert(recruit);
		 Approval appro=new Approval();
		 appro.setUserid(recruit.getPrincipal());
		 appro.setItemid(mapper.getMaxId());
		 appro.setItemname("招聘申请");
		 appro.setSequence(0);
		 appro.setApprovaldate(new Date());
		approval.insert(appro);
	}
	@Transactional
	@Override
	public void UpdateAndRemark(Recruit recruit, String remark) {
		 Approval appro=new Approval();
		 appro.setUserid(recruit.getPrincipal());
		 recruit.setPrincipal(null);//不更改此属性
		 mapper.updateByPrimaryKeySelective(recruit);
		 appro.setItemid(recruit.getRecruitid().toString());
		 appro.setItemname("招聘申请");
		 if(recruit.getStatus().equals("领导审批")){
			 appro.setSequence(1);
		 }
		 if(recruit.getStatus().equals("人事处理")){
			 appro.setSequence(3);
		 }
		 if(recruit.getStatus().equals("填单人知悉")){
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
	@Override
	public Integer[] getCountPeople(String status) {
		  Recruit record=new Recruit();
		  Entryapply entryapply=new Entryapply();
		  Official off=new Official();
		  Dimission dim=new Dimission();
		  transfer entity=new transfer();
		  record.setStatus(status);
		  entryapply.setStatus(status);
		  off.setStatus(status);
		  dim.setStatus(status);
    	  entity.setStatus(status);
		return new Integer[]{mapper.selectCount(record),
		           entry.selectCount(entryapply),
		           office.selectCount(off),
		           transfer.selectCount(entity),
		           Dimission.selectCount(dim)};
		
	}

}
