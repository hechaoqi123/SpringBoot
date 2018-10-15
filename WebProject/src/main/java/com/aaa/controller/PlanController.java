package com.aaa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.aaa.service.PlanService;

@Controller
@RequestMapping("/plan")
public class PlanController {
  @Autowired
 PlanService  planservice;
     @RequestMapping("/getAll")
  public @ResponseBody PageInfo<Map> getAll(Integer pageNum){
		return goodb.query(pageNum);
	  
	 }
  
}
