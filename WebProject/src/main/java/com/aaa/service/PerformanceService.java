package com.aaa.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.aaa.base.BaseService;
import com.aaa.bean.Performance;

public interface PerformanceService extends BaseService<Performance>{

	void UpdateAndRemark(Performance recruit, String remark);

	void saveAndApproval(Performance performance);

}