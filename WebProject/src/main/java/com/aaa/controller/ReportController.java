package com.aaa.controller;


import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Krar;
import com.aaa.bean.Task;
import com.aaa.bean.Users;
import com.aaa.bean.performUtil;
import com.aaa.bean.plan;
import com.aaa.bean.report;
import com.aaa.bean.reportUtil;
import com.aaa.service.ReportService;
import com.aaa.service.TaskService;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/report")
public class ReportController {
  @Autowired
ReportService  service;
     @RequestMapping("/getAll")
     public @ResponseBody PageInfo<Map> getAll(Integer pageNum ,HttpSession session){
    	 String uname = ((Users)session.getAttribute("CurrentUser")).getUname();
    	 PageInfo<Map> query = service.query(pageNum,uname);
		return query;
	  
	 }
     @RequestMapping("/getAlltwo")
     public @ResponseBody PageInfo<Map> getAlltwo(Integer pageNum){
		return service.querytwo(pageNum);
	  
	 }
     @RequestMapping("/addAll")
	  public  String addAll( report report,Krar krar,reportUtil re){
   	    	 service.adds(report, krar, re.getList());
  
   	
		return "wsq/report";
  }
     @RequestMapping("/getAllgetWSQ")
     public @ResponseBody PageInfo<Map> getAllget(Integer pageNum,String rtype){
   
    	 PageInfo<Map> reporres = service.reporres(pageNum, rtype);

		return reporres;
	  
	 }
     @RequestMapping("/selelis")
     @ResponseBody
     public List<report> sele(report report){
     	return service.selelis();
 
	
  }
     
     @RequestMapping("/reportQuerys")
  	public String reportQuerys(int id,Model model){
  		List<Map<String,String>> lert= service.getOne(id);
  		System.out.println(id);
  		System.out.println(lert.toString());
  		model.addAttribute("report", lert);
  		System.out.println("完成");
  		return "wsq/baogaoxiang";
  	}
     
}
  

