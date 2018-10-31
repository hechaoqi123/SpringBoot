package com.aaa.service;

import java.util.Date;
import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.aaa.base.BaseService;
import com.aaa.bean.Approval;
import com.aaa.bean.Official;
import com.aaa.bean.Recruit;

public interface OfficialService extends BaseService<Official>{
	public void saveAndApproval(Official recruit);
	void UpdateAndRemark(Official recruit, String remark);

}
