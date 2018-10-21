package com.aaa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Performance;
import com.aaa.service.PerformanceService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("Performance")
public class PerformanceController {
	@Autowired
	PerformanceService service;
	@ResponseBody
	@RequestMapping("/getAll")
    public PageInfo<Performance> getAll(Integer pageNum){
		  PageHelper.startPage(pageNum,13);
		  List<Performance> list=service.getAll();
		  PageInfo<Performance> info=new PageInfo<Performance>(list);
	    	return info;
    }
	@RequestMapping("/savePlay")
	public String savePlay(Performance performance){
		service.save(performance);
		return "hcq/performance";
	}
}
