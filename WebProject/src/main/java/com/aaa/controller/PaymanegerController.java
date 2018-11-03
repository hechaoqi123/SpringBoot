package com.aaa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Paymaneger;
import com.aaa.service.PaymanegerService;

@Controller
@RequestMapping("Paymaneger")
public class PaymanegerController {
   @Autowired
    PaymanegerService service;
   @RequestMapping("/getAll")
   public @ResponseBody List<Paymaneger> getAll(){
	   return service.getAll();
   };
}
