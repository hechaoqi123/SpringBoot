package com.aaa.service;

import java.util.List;

import com.aaa.bean.Dimission;
import com.aaa.bean.transfer;

public interface TransferService {
    List<transfer> getAll();
	
	void save(transfer transfer);
}
