package com.aaa.service;

import com.aaa.base.BaseService;
import com.aaa.bean.Chequeapply;
import com.aaa.bean.CostManager;

public interface ChequeapplySevice extends BaseService<Chequeapply>{

	void UpdateAndRemark(Chequeapply recruit, String remark);

	void saveAndApproval(Chequeapply leave);
	
}
