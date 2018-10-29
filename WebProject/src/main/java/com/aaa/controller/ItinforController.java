package com.aaa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.aaa.bean.Itinfor;
import com.aaa.service.ItinforService;

@Controller
@RequestMapping("Itinfor")
public class ItinforController {
	@Autowired
	ItinforService service;
	@RequestMapping("/itInsert")
	public void itInsert(Itinfor i){
		System.out.println(1212);
		service.itInsert(i);
		System.out.println("添加完成");
	}
}
