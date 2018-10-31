package com.aaa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Baoxiao;
import com.aaa.bean.BaoxiaoUtil;
import com.aaa.bean.CostManager;
import com.aaa.bean.CostUtil;
import com.aaa.bean.Disburse;
import com.aaa.service.EBaoxiaoService;
import com.aaa.service.EBaoxiaoServiceImpl;
import com.aaa.service.DisburseService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("Baoxiao")
public class BaoxiaoController {
	@Autowired
	EBaoxiaoService service;
	@ResponseBody
	@RequestMapping("/getAll")
    public PageInfo<Baoxiao> getAll(Integer pageNum){
		  PageHelper.startPage(pageNum,13);
		  List<Baoxiao> list=service.getAll();
		  PageInfo<Baoxiao> info=new PageInfo<Baoxiao>(list);
    	return info;
    }
	@RequestMapping("/savePlay")
	public String savePlay(Baoxiao disburse){
		service.save(disburse);
		return "hcq2/expense";
	}
	@RequestMapping("/save")
	public String save(Baoxiao cost,BaoxiaoUtil util){
		service.saveManager(cost,util.getItems());
		return "hcq2/expense";
	}
}
