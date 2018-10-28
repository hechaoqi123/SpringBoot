package com.aaa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.aaa.bean.Chequeregister;
import com.aaa.bean.Leaveapply;
import com.aaa.service.ChequeregisterService;
import com.aaa.service.LeaveService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("Chequeregister")
public class ChequeregisterController {
	@Autowired
	ChequeregisterService service;
	@ResponseBody
	@RequestMapping("/getAll")
    public PageInfo<Chequeregister> getAll(Integer pageNum){
		  PageHelper.startPage(pageNum,13);
		  List<Chequeregister> list=service.getAll();
		  PageInfo<Chequeregister> info=new PageInfo<Chequeregister>(list);
    	return info;
    }
	@RequestMapping("/savePlay")
	public String savePlay(Chequeregister leave){
		service.save(leave);
		return "hcq2/ChequeRegister";
	}
}
