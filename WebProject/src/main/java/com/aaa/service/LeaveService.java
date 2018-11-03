package com.aaa.service;

import java.util.List;

import com.aaa.base.BaseService;
import com.aaa.bean.Leaveapply;

public interface LeaveService extends BaseService<Leaveapply>{

   public void UpdateAndRemark(Leaveapply recruit, String remark);

   public void saveAndApproval(Leaveapply leave);
}
