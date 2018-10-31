package com.aaa.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aaa.base.BaseServiceImpl;
import com.aaa.bean.Approval;
import com.aaa.bean.Baoxiao;
import com.aaa.bean.Baoxiaoitem;
import com.aaa.mapper.ApprovalMapper;
import com.aaa.mapper.BaoxiaoMapper;
import com.aaa.mapper.BaoxiaoitemMapper;
@Service
public class EBaoxiaoServiceImpl extends BaseServiceImpl<Baoxiao> implements EBaoxiaoService {
    @Autowired
    BaoxiaoMapper baoxiao;
    @Autowired
    BaoxiaoitemMapper itemMapper;
    @Autowired
    ApprovalMapper approval;
    @Transactional
	public void saveManager(Baoxiao cost, List<Baoxiaoitem> items) {
		//添加申请单
		baoxiao.insert(cost);
		//获取最大ID
		Integer id=baoxiao.getMaxId();
		for (Baoxiaoitem item : items) {
			item.setBaoxiaoid(id);
			if(item.getMoney()==null||item.getMoney().equals("0")){
				continue;
			}
		    itemMapper.insert(item);
		}
	}
    @Transactional
	@Override
	public void UpdateAndRemark(Baoxiao recruit, String remark) {
		 Approval appro=new Approval();
		 appro.setUserid(recruit.getUsername());
		 appro.setItemid(recruit.getBaoxiaoid().toString());
		 appro.setItemname("费用报销申请");
		 recruit.setUsername(null);//不更改此属性
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


}
