package com.aaa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.bean.Reserve;
import com.aaa.mapper.ReserveMapper;
@Service
public class ReserveServiceImpl implements ReserveService {

	@Autowired
	ReserveMapper mapper;
	public List<Reserve> getAll() {
		return mapper.selectAll();
	}
	
	public int insertReserve(Reserve reserve) {
		return mapper.insert(reserve);
	}

}
