package com.aaa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Entryapply;
import com.aaa.bean.Official;
import com.aaa.service.EntryapplyService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("entry")
public class EntryApplyController {
	@Autowired
	 EntryapplyService service;
	@ResponseBody
	@RequestMapping("/getAll")
    public PageInfo<Entryapply> getAll(Integer pageNum){
		  PageHelper.startPage(pageNum,13);
		  List<Entryapply> list=service.getAll();
		  PageInfo<Entryapply> info=new PageInfo<Entryapply>(list);
    	return info;
    }
	
	@RequestMapping("/savePlay")
	public String savePlay(Entryapply entryapply){
		service.save(entryapply);
		return "hcq/entryPosition";
	}
}
