package com.aaa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
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
	public List<Subcompany> selectSubcompany(Model m){
		List<Subcompany> listSubcompany = service.getAllSubcompany();
		m.addAttribute("listSubcompany", listSubcompany);
		return listSubcompany;
	}
	@RequestMapping("/addSubcompany")
	public String addSubcompany(Subcompany subcompany){
		service.insert(subcompany);
		return "true";
	}
	@RequestMapping("/delSub")
	public String delSub(Integer scid){
		service.deleteByPrimaryKey(scid);
		return "true";
	}
	
}
