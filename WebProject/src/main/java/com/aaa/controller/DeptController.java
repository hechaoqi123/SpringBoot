package com.aaa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.aaa.bean.Dept;
import com.aaa.service.DeptService;

@RestController
@RequestMapping("/DeptController")
public class DeptController {
	@Autowired
	DeptService service;
	
	@RequestMapping("/selectDept")
	public List<Dept> selectDept(Integer belong){
		List<Dept> listDept = service.getAllDept(belong);
		return listDept;
	}
	@RequestMapping("/addDept")
	public String addDept(Dept dept){
		service.insert(dept);
		return "true";
	}
	@RequestMapping("/delDept")
	public String delDept(Integer deptid){
		int deleteByPrimaryKey = service.deleteByPrimaryKey(deptid);
		if(deleteByPrimaryKey == 1){
			return "true";
		}else{
			return "false";
		}
	}
}
