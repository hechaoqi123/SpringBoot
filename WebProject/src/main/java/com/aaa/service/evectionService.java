package com.aaa.service;

import java.util.List;

import com.aaa.base.BaseService;
import com.aaa.bean.Evection;
import com.aaa.bean.Official;

public interface evectionService extends BaseService<Evection>{

	void UpdateAndRemark(Evection recruit, String remark);

	void saveAndApproval(Evection evection);
}
