package com.aaa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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
	 @RequestMapping("/getAll")
	 @ResponseBody	
	 public List<Dept> getAll(){
		  return service.getAll();
	  };
}
