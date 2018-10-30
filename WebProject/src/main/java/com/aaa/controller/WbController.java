package com.aaa.controller;

import java.util.List;import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Wb;
import com.aaa.service.WbService;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/Wb")
public class WbController {
     @Autowired
     WbService wbservice;
     
     @RequestMapping("/getAllWb")
     public @ResponseBody PageInfo getAllWb(Integer pageNum){
    	 PageInfo p= wbservice.getAllWb(pageNum);
    	 System.out.println(p);
      return p;
     
     }
     
     @RequestMapping("/addWb")
	 public @ResponseBody String addWb(Wb wb){
    	 wbservice.addWb(wb);
    	 return "true";
     }
     @RequestMapping("/getAllWbone1")
     public @ResponseBody PageInfo getAllWbone1(Integer pageNum,String wbfl){
      return wbservice.getAllWbone1(pageNum, wbfl);
     
     }
     @RequestMapping("/getAllWbone2")
     public @ResponseBody PageInfo getAllWbone2(Integer pageNum,String wbfl){
      return wbservice.getAllWbone2(pageNum, wbfl);
     
     }
     @RequestMapping("/getAllWbone3")
     public @ResponseBody PageInfo getAllWbone3(Integer pageNum,String wbfl){
      return wbservice.getAllWbone3(pageNum, wbfl);
     
     }
     @RequestMapping("/getAllWbone4")
     public @ResponseBody PageInfo getAllWbone4(Integer pageNum,String wbfl){
      return wbservice.getAllWbone4(pageNum, wbfl);
     
     }
}
