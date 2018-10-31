package com.aaa.controller;


import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Krar;
import com.aaa.bean.Userdetail;
import com.aaa.bean.Users;
import com.aaa.bean.Dept;
import com.aaa.bean.perform;
import com.aaa.bean.performUtil;
import com.aaa.bean.plan;
import com.aaa.service.PlanService;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/plan")
public class PlanController {
  @Autowired
 PlanService  planservice;
     @RequestMapping("/getAll")
     public @ResponseBody PageInfo<Map> getAll(Integer pageNum,HttpSession session){
    	 String uname = ((Users)session.getAttribute("CurrentUser")).getUname();
    	 PageInfo<Map> query = planservice.query(pageNum,uname);
		return query;
	  
	 }
     @RequestMapping("/getAlltwo")
     public @ResponseBody PageInfo<Map> getAlltwo(Integer pageNum){
		return  planservice.querytwo(pageNum);
	  
	 }

     @RequestMapping("/addAll")
	  public  String addAll(plan plan,Krar krar,performUtil per){
    	    	 planservice.adds(plan, krar, per.getList());
		return "wsq/task";
   }
     @RequestMapping("/selty")
     @ResponseBody
     public List<plan> selty(){
     	List<plan> quer = planservice.quer();
     
    	return quer;
 }
     @RequestMapping("/seltys")
     public @ResponseBody List<Userdetail> seltys(){
     	List<Userdetail> quers = planservice.quers();
  
    	return quers;
 }
     @RequestMapping("/seltys1")
     public @ResponseBody List<Dept> seltys1(){
     	List<Dept> quersa = planservice.quersa();
     	System.out.println(quersa);
    	return quersa;
 }
     @RequestMapping("/seltyt")
     public @ResponseBody List<Krar> seltyt(){
     	List<Krar> quers2 = planservice.querst();
    	return quers2;
 }
     @RequestMapping("/queryertWSQ")
     public @ResponseBody PageInfo<Map> getAllget(Integer pageNum ,String type){
    	
    	 return  planservice.ty(pageNum, type);
	  
	 }
     @RequestMapping("/classify")	
 	@ResponseBody
 	  public List<plan> classify(plan plan){
 		    return planservice.reser();
 	  }
 	 @RequestMapping("/planQuerys")
 	public String planQuerys(int id,Model model){
 		List<Map<String,String>> lert= planservice.getOne(id);
 		System.out.println(id);
 		System.out.println(lert.toString());
 		model.addAttribute("plan", lert);
 		System.out.println("完成");
 		return "wsq/jihuaxiang";
 	}
    
}
