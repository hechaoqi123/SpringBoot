package com.aaa.service;

import java.util.Date;
import java.util.List;

import javax.mail.Session;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

import com.aaa.base.BaseServiceImpl;
import com.aaa.base.EmailUtil;
import com.aaa.bean.Approval;
import com.aaa.bean.Official;
import com.aaa.bean.Recruit;
import com.aaa.bean.Userdetail;
import com.aaa.mapper.ApprovalMapper;
import com.aaa.mapper.OfficialMapper;
import com.aaa.mapper.UserdetailMapper;
@Service
public class OfficialServiceImpl extends BaseServiceImpl<Official> implements OfficialService {
    @Autowired
    ApprovalMapper approval;
    @Autowired
    OfficialMapper off;
    @Autowired
    UserdetailMapper userMapper;
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
			 Session session=EmailUtil.getSession();
			 Userdetail user=new Userdetail();
			 user.setUsername(appro.getUserid());
			 user=userMapper.selectOne(user);
			 System.out.println(user.toString());
			 if(user.getEmail()!=null){
				 try {
						MimeMessage message=EmailUtil.createSimpleEmail("转正通知", "XXX先生,您的转正申请在"+new Date()+"通过审批，恭喜你成为本公司正式员工的一员", session, new String[]{user.getEmail()});
					    EmailUtil.SendEmail(session, message);
					 } catch (Exception e) {
						throw new RuntimeException("邮件发送失败！");
					}
			 }
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
