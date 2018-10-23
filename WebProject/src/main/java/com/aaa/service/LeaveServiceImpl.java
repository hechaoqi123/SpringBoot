package com.aaa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.bean.Leaveapply;
import com.aaa.mapper.LeaveMapper;

@Service
public class LeaveServiceImpl implements LeaveService {
   @Autowired
   LeaveMapper mapper;
   public List<Leaveapply> getAll(){
	  return  mapper.selectAll();
   }
	@Override
	public void save(Leaveapply leave) {
		mapper.insert(leave);
	}
}
