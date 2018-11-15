package com.aaa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Carmaintenance;
import com.aaa.service.CarmaintenanceService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("carmaintenance")
public class CarmaintenanceController {
	@Autowired
	CarmaintenanceService service;
	 @RequestMapping("/getAllCarmaintenance")
     @ResponseBody
     public PageInfo<Carmaintenance> getAll(Integer pageNum){
	     PageHelper.startPage(pageNum,10);
	     List<Carmaintenance> car=service.getAll();
	     PageInfo<Carmaintenance> pageInfo=new PageInfo<Carmaintenance>(car);
         return pageInfo;
     }
}
