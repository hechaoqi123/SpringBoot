package com.aaa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.aaa.bean.Groupcompany;
import com.aaa.service.GroupcompanyService;

@RestController
@RequestMapping("/GroupcompanyController")
public class GroupcompanyController {
	@Autowired
	GroupcompanyService service;
	
	@RequestMapping("/selectGroupcompany")
	public List<Groupcompany> selectGroupcompany(){
		List<Groupcompany> listGroupcompany = service.getAllGroupcompany();
		return listGroupcompany;
	}
	
}
