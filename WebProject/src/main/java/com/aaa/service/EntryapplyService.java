package com.aaa.service;

import java.util.List;

import com.aaa.base.BaseService;
import com.aaa.bean.Entryapply;

public interface EntryapplyService extends BaseService<Entryapply> {

	void saveAndApproval(Entryapply entryapply);

	void UpdateAndRemark(Entryapply apply, String remark);
}
