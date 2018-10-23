package com.aaa.controller;


import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Krar;
import com.aaa.bean.Task;
import com.aaa.bean.performUtil;
import com.aaa.bean.plan;
import com.aaa.service.ReportService;
import com.aaa.service.TaskService;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/report")
public class ReportController {
  @Autowired
ReportService  service;
     @RequestMapping("/getAll")
     public @ResponseBody PageInfo<Map> getAll(Integer pageNum){
    	
		return  service.query(pageNum);
	  
	 }
     @RequestMapping("/getAlltwo")
     public @ResponseBody PageInfo<Map> getAlltwo(Integer pageNum){
		return   service.querytwo(pageNum);
	  
	 }
   
  
   	
	
  }
   
  
