package com.aaa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.aaa.bean.Chequeapply;
import com.aaa.bean.Leaveapply;
import com.aaa.service.ChequeapplySevice;
import com.aaa.service.LeaveService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@RestController
@RequestMapping("Chequeapply")
public class ChequeapplyController {
	@Autowired
	ChequeapplySevice service;
	@ResponseBody
	@RequestMapping("/getAll")
    public PageInfo<Chequeapply> getAll(Integer pageNum){
		  PageHelper.startPage(pageNum,13);
		  List<Chequeapply> list=service.getAll();
		  PageInfo<Chequeapply> info=new PageInfo<Chequeapply>(list);
    	return info;
    }
	@RequestMapping("/savePlay")
	public String savePlay(Chequeapply leave){
		service.save(leave);
		return "hcq2/BillManager";
	}
}
