package com.aaa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Paymaneger;
import com.aaa.bean.Revenue;
import com.aaa.service.RevenueService;

@Controller
@RequestMapping("Revenue")
public class RevenueController {
   @Autowired
   RevenueService service;
   @RequestMapping("/getAll")
   public @ResponseBody List<Revenue> getAll(){
	   return service.getAll();
   };
}
