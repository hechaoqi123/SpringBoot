package com.aaa.service;

import java.util.List;

import com.aaa.base.BaseService;
import com.aaa.bean.Dimission;

public interface DimissionService extends BaseService<Dimission>{

	void saveAndApproval(Dimission dimission);

	void UpdateAndRemark(Dimission recruit, String remark);
}
