package com.aaa.service;

import java.util.List;

import com.aaa.base.BaseService;
import com.aaa.bean.Overtime;

public interface OvertimeService extends BaseService<Overtime>{
	void UpdateAndRemark(Overtime recruit, String remark);

	void saveAndApproval(Overtime overtime);
}
