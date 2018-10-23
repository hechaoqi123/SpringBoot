package com.aaa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Official;
import com.aaa.bean.Recruit;
import com.aaa.service.OfficialService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;


@Controller
@RequestMapping("Official")
public class OfficialController {
	@Autowired
	OfficialService service;
	@ResponseBody
	@RequestMapping("/getAll")
    public PageInfo<Official> getAll(Integer pageNum){
		  PageHelper.startPage(pageNum,13);
		  List<Official> list=service.getAll();
		  PageInfo<Official> info=new PageInfo<Official>(list);
    	return info;
    }
	//新增转正申请
	@RequestMapping("/savePlay")
	public String savePlay(Official official){
		service.save(official);
		return "hcq/official";
	}
}
