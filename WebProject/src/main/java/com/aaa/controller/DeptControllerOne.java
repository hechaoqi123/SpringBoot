package com.aaa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.aaa.bean.Dept;
import com.aaa.bean.Income;
import com.aaa.service.DeptService;
import com.aaa.service.IncomeService;

@Controller
@RequestMapping("/DeptControllerOne")
public class DeptControllerOne {
	@Autowired
	DeptService service;
	
	 @Autowired
	   IncomeService services;
	
	@RequestMapping("/selectDept")
	public @ResponseBody List<Dept> selectDept(){
		List<Dept> listDept = service.getAll();
		return listDept;
	}
	@RequestMapping("/addDept")
	public @ResponseBody String addDept(Dept dept){
		service.insert(dept);
		return "true";
	}
	 @RequestMapping("/getAll")
	 @ResponseBody	
	 public  List<Dept> getAll(){
		  return service.getAll();
	  };
	  @RequestMapping("/updateHuiOne")
	  public void updateHuiOne(Integer cid,String contracqq,String qq){
		  System.out.println(cid+"====="+contracqq+"===="+qq+"222");
		  int qaq=Integer.parseInt(contracqq)+Integer.parseInt(qq);
		  System.out.println(qaq);
		 
		  String qwq=Integer.toString(qaq);
		  System.out.println(qwq);
		  service.updateHuiOne(qwq, cid);
	  }
	  @RequestMapping("/savePlay")
	  @Transactional
		public String savePlay(Income income,Integer cid,String contracqq,String qq){
			services.save(income);
			updateHuiOne(cid,income.getMoney(),qq);
			return "mh/AllContract";
		}
	  
}
