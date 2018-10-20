package com.aaa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Dimission;
import com.aaa.bean.transfer;
import com.aaa.service.DimissionService;
import com.aaa.service.TransferService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("Dimission")
public class DimissionController {
	@Autowired
	DimissionService service;
	@ResponseBody
	@RequestMapping("/getAll")
    public PageInfo<Dimission> getAll(Integer pageNum){
		  PageHelper.startPage(pageNum,13);
		  List<Dimission> list=service.getAll();
		  PageInfo<Dimission> info=new PageInfo<Dimission>(list);
    	return info;
    }
	//新增离职申请
	@RequestMapping("/savePlay")
	public String savePlay(Dimission dimission){
		service.save(dimission);
		return "hcq/dimission";
	}
}
