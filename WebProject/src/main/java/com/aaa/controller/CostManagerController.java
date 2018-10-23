package com.aaa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.aaa.bean.CostManager;
import com.aaa.bean.Dept;
import com.aaa.bean.Dimission;
import com.aaa.service.CostManagerService;
import com.aaa.service.DeptService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@RestController
@RequestMapping("CostManager")
public class CostManagerController {
	@Autowired
	CostManagerService service;
	/*
	@RequestMapping("/save")
	public String save(CostManager dept){
		service.save(dept);
		return "true";
	}*/
	 @RequestMapping("/getAll")
	 @ResponseBody	
	  public PageInfo<CostManager> getAll(Integer pageNum){
		  PageHelper.startPage(pageNum,13);
		  List<CostManager> list=service.getAll();
		  PageInfo<CostManager> info=new PageInfo<CostManager>(list);
    	return info;
    }
}
