package com.aaa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Evection;
import com.aaa.bean.Official;
import com.aaa.service.evectionService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("Evection")
public class EvectionController {
	@Autowired
	evectionService service;
	@ResponseBody
	@RequestMapping("/getAll")
    public PageInfo<Evection> getAll(Integer pageNum){
		  PageHelper.startPage(pageNum,13);
		  List<Evection> list=service.getAll();
		  PageInfo<Evection> info=new PageInfo<Evection>(list);
    	return info;
    }
	@RequestMapping("/savePlay")
	public String savePlay(Evection evection){
		service.save(evection);
		return "hcq/checking";
	}
}
