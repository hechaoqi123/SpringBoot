package com.aaa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Dept;
import com.aaa.service.DeptService;

@Controller
@RequestMapping("Dept")
public class DeptController {
	@Autowired
	DeptService service;
  @ResponseBody	
  @RequestMapping("/getAll")
  public List<Dept> getAll(){
	  
	  return service.getAll();
  };
  
}
