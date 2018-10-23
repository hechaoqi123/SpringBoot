package com.aaa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Expendmanager;
import com.aaa.bean.Income;
import com.aaa.service.ExpendManagerService;
import com.aaa.service.IncomeService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("Expend")
public class ExpendController {
	 @Autowired
	 ExpendManagerService service;
     @ResponseBody
     @RequestMapping("/getAll")
   public PageInfo<Expendmanager> getAll(Integer pageNum){
	  PageHelper.startPage(pageNum,13);
	  List<Expendmanager> list=service.getAll();
	  PageInfo<Expendmanager> info=new PageInfo<Expendmanager>(list);
   	return info;
   }
	@RequestMapping("/savePlay")
   public String savePlay(Expendmanager expend){
		service.save(expend);
		return "hcq2/expend";
   }
}
