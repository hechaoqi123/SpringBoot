package com.aaa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aaa.bean.Dept;
import com.aaa.mapper.DeptMapper;
@Service
public class DeptServiceImpl implements DeptService {
	@Autowired
	DeptMapper mapper;
    public List<Dept> getAllDept(){
		return mapper.selectAll();
    }
    public List<Dept> getAllDept(Integer belong){
		return mapper.getAllDept(belong);
	}
    @Transactional
	@Override
	public int insert(Dept record) {
		return mapper.insert(record);
	}
    @Transactional
	@Override
	public int deleteByPrimaryKey(Integer deptid) {
		return mapper.deleteByPrimaryKey(deptid);
	};
	@Override
	public List<Dept> getAll() {
		return mapper.selectAll();
	}
	@Override
	public Dept getDept(String dept) {
		Dept d=new Dept();
		d.setDeptname(dept);
		return mapper.selectOne(d);
	}
	public void updateHuiOne(String contracqq, Integer cid) {
		mapper.updateHuiOne(contracqq, cid);
	}

	
	
}
