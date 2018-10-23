package com.aaa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Overtime;
import com.aaa.bean.Recruit;
import com.aaa.service.OvertimeService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("Overtime")
public class OvertimeController {
	@Autowired
	OvertimeService service;
	@ResponseBody
	@RequestMapping("/getAll")
    public PageInfo<Overtime> getAll(Integer pageNum){
		  PageHelper.startPage(pageNum,13);
		  List<Overtime> list=service.getAll();
		  PageInfo<Overtime> info=new PageInfo<Overtime>(list);
	    	return info;
    }
	//新增招聘申请
	@RequestMapping("/savePlay")
	public String savePlay(Overtime overtime){
		service.save(overtime);
		return "hcq/overtime";
	}

}
