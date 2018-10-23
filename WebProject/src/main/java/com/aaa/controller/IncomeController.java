package com.aaa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Evection;
import com.aaa.bean.Income;
import com.aaa.service.IncomeService;
import com.aaa.service.evectionService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("Income")
public class IncomeController {
   @Autowired
   IncomeService service;
	@ResponseBody
	@RequestMapping("/getAll")
   public PageInfo<Income> getAll(Integer pageNum){
	  PageHelper.startPage(pageNum,13);
	  List<Income> list=service.getAll();
	  PageInfo<Income> info=new PageInfo<Income>(list);
   	return info;
   }
	@RequestMapping("/savePlay")
	public String savePlay(Income income){
		service.save(income);
		return "hcq2/Income";
	}
}
