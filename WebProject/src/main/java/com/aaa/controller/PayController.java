package com.aaa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Pay;
import com.aaa.service.PayService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@RequestMapping("Pay")
@Controller
public class PayController {
	@Autowired
	PayService service;
	@RequestMapping("/queryByCriteria")
   public @ResponseBody PageInfo<Pay> queryByCriteria(Integer pageNum,Pay pay){
	   PageHelper.startPage(pageNum, 10);
	   PageInfo<Pay> info=new PageInfo<Pay>(service.select(pay));
	   return info; 
	   
   }
}
