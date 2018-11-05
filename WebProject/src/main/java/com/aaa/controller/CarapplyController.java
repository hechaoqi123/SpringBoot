package com.aaa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.aaa.bean.Carapply;
import com.aaa.bean.Userdetail;
import com.aaa.service.CarapplyService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("carapply")
public class CarapplyController {
	@Autowired
	CarapplyService service;
	@ResponseBody
	@RequestMapping("/getAll")
    public PageInfo<Carapply> getAll(Integer pageNum){
		PageHelper.startPage(pageNum,10);
		List<Carapply> list=service.getAll();
	    PageInfo<Carapply> info=new PageInfo<Carapply>(list);
    	return info;
    }
	@RequestMapping("/carapplyAdd")
	public String savePlay(Carapply carapply){
		service.inserCarapply(carapply);
		return "gm/getAll";
	}

}
