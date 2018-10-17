package com.aaa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.aaa.bean.Subcompany;
import com.aaa.service.SubcompanyService;

@RestController
@RequestMapping("/SubcompanyController")
public class SubcompanyController {
	@Autowired
	SubcompanyService service;
	
	@RequestMapping("/selectSubcompany")
	public List<Subcompany> selectSubcompany(){
		List<Subcompany> listSubcompany = service.getAllSubcompany();
		return listSubcompany;
	}
	@RequestMapping("/addSubcompany")
	public String addSubcompany(Subcompany subcompany){
		service.insert(subcompany);
		return "true";
	}
	
}
