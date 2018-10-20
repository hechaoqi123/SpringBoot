package com.aaa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Leaveapply;
import com.aaa.bean.Official;
import com.aaa.service.LeaveService;
import com.aaa.service.OfficialService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("Leave")
public class LeaveController {
	@Autowired
	LeaveService service;
	@ResponseBody
	@RequestMapping("/getAll")
    public PageInfo<Leaveapply> getAll(Integer pageNum){
		  PageHelper.startPage(pageNum,13);
		  List<Leaveapply> list=service.getAll();
		  PageInfo<Leaveapply> info=new PageInfo<Leaveapply>(list);
    	return info;
    }
	//新增转正申请
	@RequestMapping("/savePlay")
	public String savePlay(Leaveapply leave){
		service.save(leave);
		return "hcq/official";
	}
}
