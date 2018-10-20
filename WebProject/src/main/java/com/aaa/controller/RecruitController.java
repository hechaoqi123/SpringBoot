package com.aaa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Recruit;
import com.aaa.bean.Userdetail;
import com.aaa.service.RecruitService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

//招聘申请与配置
@Controller
@RequestMapping("Recruit")
public class RecruitController {
	@Autowired
	RecruitService service;
	@ResponseBody
	@RequestMapping("/getAll")
    public PageInfo<Recruit> getAll(Integer pageNum){
		  PageHelper.startPage(pageNum,13);
		  List<Recruit> list=service.getAll();
		  PageInfo<Recruit> info=new PageInfo<Recruit>(list);
	    	return info;
    }
	@RequestMapping("/savePlay")
	public String savePlay(Recruit recruit){
		service.save(recruit);
		return "hcq/recruit";
	}
	
}
