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
import org.springframework.validation.BindingResult;
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
	  public @ResponseBody String addAll(Task task,Krar krar){
    	 System.out.println(task);
    	 System.out.println(krar);
    	 taskservice.adds(task, krar);
  
   	
		return "trun";
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
 	public  String addTaskAll(@RequestBody ArrUtil l){//, BindingResult bindingresult
 	/*	System.out.println("ssss:"+l.getCh().get(0).getDetailId());
 		List<TwoUtilEntity> eh = l.getEh();
 	for(int i=0;i<eh.size();i++){
 		System.out.println(eh.get(i).getDeptid());
 	}*/
 		  /*List<List<OneUtilEntity>> a = l.getCh();
 		  List<TwoUtilEntity> b = l.getEh();
 		  
 		  for(int i=0;i<b.size();i++){
 			 TwoUtilEntity renwu = b.get(i);//任务
 			 List<OneUtilEntity> zxr = a.get(i);//任务对应的执行人
 			 System.out.print("任务："+renwu.getTname()+",对应的执行人数量为：");
 			 System.out.print(zxr.size());
 			  
 		  }*/
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
