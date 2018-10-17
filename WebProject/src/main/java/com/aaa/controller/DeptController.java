package com.aaa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
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
	public List<Dept> selectDept(){
		List<Dept> listDept = service.getAllDept();
		return listDept;
	}
	@RequestMapping("/addDept")
	public String addDept(Dept dept){
		service.insert(dept);
		return "true";
	}
	/*
	@RequestMapping("/insertVisittwomodile")
	public String insertVisittwomodile(Visittwomodile visittwomodile) throws Exception {
		service.insert(visittwomodile);
		return "成功插入";
		
	}
	@RequestMapping("/selectVisitonemodile")
	public List<Map> selectVisitonemodile(){
		List<Map> selectVisitonemodile = service.selectVisitonemodile();
		return selectVisitonemodile;
	}
	@RequestMapping("/selectVisittwomodile")
	public List<Map> selectVisittwomodile(){
		List<Map> selectVisitonemodile = service.selectVisittwomodile();
		return selectVisitonemodile;
	}*/
}
