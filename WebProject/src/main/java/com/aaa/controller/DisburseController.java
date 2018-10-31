package com.aaa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.base.BaseService;
import com.aaa.bean.Dimission;
import com.aaa.bean.Disburse;
import com.aaa.service.DisburseService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("Disburse")
public class DisburseController {
	@Autowired
	DisburseService service;
	@ResponseBody
	@RequestMapping("/getAll")
    public PageInfo<Disburse> getAll(Integer pageNum){
		  PageHelper.startPage(pageNum,13);
		  List<Disburse> list=service.getAll();
		  PageInfo<Disburse> info=new PageInfo<Disburse>(list);
    	return info;
    }
	@RequestMapping("/savePlay")
	public String savePlay(Disburse disburse){
		service.save(disburse);
		return "hcq/dimission";
	}
}
