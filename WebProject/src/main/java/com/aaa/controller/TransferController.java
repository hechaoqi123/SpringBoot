package com.aaa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Official;
import com.aaa.bean.transfer;
import com.aaa.service.OfficialService;
import com.aaa.service.TransferService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("Transfer")
public class TransferController {
	@Autowired
	TransferService service;
	@ResponseBody
	@RequestMapping("/getAll")
    public PageInfo<transfer> getAll(Integer pageNum){
    	  PageHelper.startPage(pageNum,13);
		  List<transfer> list=service.getAll();
		  PageInfo<transfer> info=new PageInfo<transfer>(list);
    	return info;
    }
	//新增招聘申请
	@RequestMapping("/savePlay")
	public String savePlay(transfer transfer){
		service.save(transfer);
		return "hcq/transfer";
	}
}
