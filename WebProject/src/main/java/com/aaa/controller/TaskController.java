package com.aaa.controller;


import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.apache.jasper.tagplugins.jstl.core.ForEach;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.ArrUtil;
import com.aaa.bean.Krar;
import com.aaa.bean.OneUtilEntity;
import com.aaa.bean.Task;
import com.aaa.bean.TaskAllUtil;
import com.aaa.bean.TwoUtilEntity;
import com.aaa.bean.Users;
import com.aaa.service.TaskService;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.pagehelper.PageHelper;
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
	  public  String addAll(Task task,Krar krar){
    	 taskservice.adds(task, krar);
  
   	
		return "wsq/schedule";
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
     @RequestMapping("/taskQuerys")
  	public String planQuerys(int id,Model model){
  		List<Map<String,String>> lert= taskservice.getOne(id);
  		System.out.println(id);
  		System.out.println(lert.toString());
  		model.addAttribute("task", lert);
  		System.out.println("完成");
  		return "wsq/renwuxiang";
  	}
     
     @RequestMapping("/insert")
     public String insert(Task t){
    	 
    	 taskservice.insert(t);;
    	 return "mh/taskMeAll";
     }
     @RequestMapping("/insertAll")
     public String insertAll(Task t){
    	 
    	 taskservice.insert(t);;
    	 return "mh/taskAll";
     }
     
     @RequestMapping("/selectTask")
     public @ResponseBody PageInfo<Map> selectTask(Integer pageNum,String key){
    	 System.out.println(1111);
    	 PageHelper.startPage(pageNum, 8);
 		List<Map> task=taskservice.selectTask(key);
 		PageInfo<Map> info=new PageInfo<Map>(task);
 		System.out.println(info.getList());
 		return info;
    	 
     }
     @RequestMapping("/selectTailed")
     public String selectTailed(Integer tid,Model model){
    	 List<Map> list=taskservice.selectTailed(tid);
    	 model.addAttribute("list",list);
    	 return "mh/taskTailed";
     }
     @RequestMapping("/selectTailedAll")
     public String selectTailedAll(Integer tid,Model model){
    	 List<Map> list=taskservice.selectTailed(tid);
    	 model.addAttribute("list",list);
    	 return "mh/taskTailedAll";
     }
     @RequestMapping("/selectiid")
     public String selectiid(Integer iid,Model model){
    	 List<Map> list=taskservice.selectiid(iid);
    	 model.addAttribute("list",list);
    	 
    	 return "mh/taskSelectIid";
     }
     @RequestMapping("/taskUserAdd")
     public String tackUserAdd(HttpSession session){
    	 Integer did=((Users)session.getAttribute("CurrentUser")).getUid();
 		String name=((Users)session.getAttribute("CurrentUser")).getUname();
 		session.setAttribute("name", name);
 		session.setAttribute("didd", did);
    	 return "mh/taskAddAll";
     }
     @RequestMapping("/taskUserAddMe")
     public String taskUserAddMe(HttpSession session){
    	 Integer did=((Users)session.getAttribute("CurrentUser")).getUid();
 		String name=((Users)session.getAttribute("CurrentUser")).getUname();
 		session.setAttribute("name", name);
 		session.setAttribute("didd", did);
    	 return "mh/taskAdd";
     }
     @RequestMapping("selectMeTask")
     public @ResponseBody PageInfo<Map> selectMeTask(HttpSession session,Integer pageNum){
    	 PageHelper.startPage(pageNum, 8);
    	 System.out.println(((Users)session.getAttribute("CurrentUser")).getUid()+":usersid");
 		List<Map> task=taskservice.selectMeTask(((Users)session.getAttribute("CurrentUser")).getUid());
 		PageInfo<Map> info=new PageInfo<Map>(task);
 		System.out.println(info.getList());
 		return info;
     }
     //取消任务
     @RequestMapping("/updateTaskOne")
     public String updateTaskOne(Integer tid){
    	 taskservice.updateTaskOne(tid);
    	 return "mh/taskMeAll";
     }
     @RequestMapping("/updateTaskOneAll")
     public String updateTaskOneAll(Integer tid){
    	 taskservice.updateTaskOne(tid);
    	 return "mh/taskAll";
     }
     
     //完成任务
     @RequestMapping("/updateTask")
     public String updateTask(Integer tid){
    	 taskservice.updateTask(tid);
    	 return "mh/taskMeAll";
     } 
     @RequestMapping("/updateTaskAll")
     public String updateTaskAll(Integer tid){
    	 taskservice.updateTask(tid);
    	 return "mh/itemMeAll";
     } 
 	@RequestMapping("/addTaskAll")
 	public  String addTaskAll(@RequestBody ArrUtil l){
 		taskservice.allIsert(l); 
 		return null;
 		
 	}
 	
 	@RequestMapping("/aaaa")
 	public String aaaa(@RequestBody List<Map> list){
 		System.out.println(list);
 		//taskservice.allzxr(taskservice.selectMaxIdOne(), list.get(0).get("de"));;
 		return null;
 	}
}
