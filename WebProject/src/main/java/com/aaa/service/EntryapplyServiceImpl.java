package com.aaa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.bean.Entryapply;
import com.aaa.mapper.EntryapplyMapper;
@Service
public class EntryapplyServiceImpl implements EntryapplyService {
    @Autowired
    EntryapplyMapper mapper;
	@Override
	public int save(Entryapply record) {
		return mapper.insert(record);
	}

	@Override
	public List<Entryapply> getAll() {
		return mapper.selectAll();
	}

}
