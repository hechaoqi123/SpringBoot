package com.aaa.service;

import java.util.List;

import com.aaa.base.BaseService;
import com.aaa.bean.Dimission;
import com.aaa.bean.Official;
import com.aaa.bean.transfer;

public interface TransferService extends BaseService<transfer>{

	void UpdateAndRemark(transfer transfer, String remark);

	void saveAndApproval(transfer transfer);
}
