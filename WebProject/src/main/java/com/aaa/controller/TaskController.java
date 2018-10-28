package com.aaa.controller;


import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Krar;
import com.aaa.bean.Task;
import com.aaa.bean.Users;
import com.aaa.bean.performUtil;
import com.aaa.bean.plan;
import com.aaa.service.TaskService;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/task")
public class TaskController {
  @Autowired
  TaskService  taskservice;
     @RequestMapping("/getAll")
     public @ResponseBody PageInfo<Map> getAll(Integer pageNum,HttpSession session){
       	 String uname = ((Users)session.getAttribute("CurrentUser")).getUname();
		return  taskservice.query(pageNum,uname);
	  
	 }
     @RequestMapping("/getAlltwo")
     public @ResponseBody PageInfo<Map> getAlltwo(Integer pageNum){
		return   taskservice.querytwo(pageNum);
	  
	 }
     @RequestMapping("/addAll")
	  public @ResponseBody String addAll(Task task,Krar krar){
    	 System.out.println(task);
    	 System.out.println(krar);
    	 taskservice.adds(task, krar);
  
   	
		return "trun";
  }
     @RequestMapping("/querywsq")
     public @ResponseBody PageInfo<Map> querywsq(Integer pageNum ,String rwfl){
    	System.out.println(taskservice.selectall(pageNum, rwfl).toString());
    	 return taskservice.selectall(pageNum, rwfl);
	  
	 }
     @RequestMapping("/classifty")	
  	@ResponseBody
  	  public List<Task> classifty(Task task){
  		    return taskservice.querylet();
  	  }
     
}
