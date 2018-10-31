package com.aaa.service;

import java.util.List;

import com.aaa.base.BaseService;
import com.aaa.bean.Recruit;

public interface  RecruitService extends BaseService<Recruit> {
	//获取数据量
    Integer[] getCount(String status,String oldpart);

	void saveAndApproval(Recruit recruit);

	void UpdateAndRemark(Recruit recruit, String remark);

}
