package com.aaa.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.ForEach;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Itinfor;
import com.aaa.bean.Users;
import com.aaa.service.ItinforService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("Itinfor")
public class ItinforController {
	@Autowired
	ItinforService service;
	@RequestMapping("/itInsert")
	public String itInsert(Itinfor i){
		System.out.println(1212);
		service.itInsert(i);
		System.out.println("添加完成");
		return "mh/projectManager";
	}
	@RequestMapping("/select")
	public @ResponseBody List<Itinfor> selectAll(Model model){
		List<Itinfor> list=service.select();
		model.addAttribute("list", list);
		return list;
	}
	@RequestMapping("/selectDim")
	public @ResponseBody PageInfo<Map> selectDim(Integer pageNum,String key){
		PageHelper.startPage(pageNum, 5);
		List<Map> itinfor=service.selectDim(key);
		PageInfo<Map> info=new PageInfo<Map>(itinfor);
		return info;
	}
	
	@RequestMapping("/selectDetailed")
	public String selectDetailed(Integer iid,Model model){
		System.out.println(111);
		List<Map> list=service.selectDetailed(iid);
		model.addAttribute("list", list);
		
		return "mh/itemDetailed";
	}
	@RequestMapping("/selectDetailedOne")
	public String selectDetailedOne(Integer iid,Model model,HttpSession session){
		System.out.println(111);
		List<Map> list=service.selectDetailed(iid);
		Integer did=((Users)session.getAttribute("CurrentUser")).getUid();
		model.addAttribute("didd", did);
		System.out.println(did);
		model.addAttribute("list", list);
		
		return "mh/itemDetailedOne";
	}
	@RequestMapping
	public String selectIid(Integer iid){
		System.out.println(iid);
		return "mh/taskSelectIid";
		
		
	}
	@RequestMapping("/selectState")
	public @ResponseBody PageInfo<Map> selectState(Integer pageNum){
		PageHelper.startPage(pageNum, 5);
		List<Map> itinfor=service.selectState();
		PageInfo<Map> info=new PageInfo<Map>(itinfor);
		return info;
	}
	@RequestMapping("/updateIdState")
	public String updateIdState(Integer iid){
		System.out.println(111);
		System.out.println(iid);
		service.updateIdState(iid);
		
		return "mh/itinforIdState";
	}
	@RequestMapping("/selectMeItinforId")
	public String selectMeItinforId(HttpSession session){
		
		Integer did=((Users)session.getAttribute("CurrentUser")).getUid();
		String name=((Users)session.getAttribute("CurrentUser")).getUname();
		System.out.println(name);
		session.setAttribute("name", name);
		session.setAttribute("didd", did);
		return "mh/itemAdd";
	}
	@RequestMapping("/selectMeItinforIdAll")
	public String selectMeItinforIdAll(HttpSession session){
		
		Integer did=((Users)session.getAttribute("CurrentUser")).getUid();
		String name=((Users)session.getAttribute("CurrentUser")).getUname();
		session.setAttribute("name", name);
		session.setAttribute("didd", did);
		return "mh/itemAddAll";
	}
	
	@RequestMapping("/selectMeItinfor")
	public  @ResponseBody PageInfo<Map> selectMeItinfor(Integer did,Integer pageNum,HttpSession session){
	
		
		PageHelper.startPage(pageNum, 1);
		List<Map> itinfor=service.selectMeItinfor(((Users)session.getAttribute("CurrentUser")).getUid());
		PageInfo<Map> info=new PageInfo<Map>(itinfor);
		return info;
	}
	@RequestMapping("/updateIdStateOne")
	public String updateIdStateOne(Integer iid){
		service.updateIdStateOne(iid);
		return "mh/projectManager";
	}
	@RequestMapping("/selectStateOne")
	public @ResponseBody PageInfo<Map> selectStateOne(Integer pageNum){
		PageHelper.startPage(pageNum, 5);
		List<Map> itinfor=service.selectStateOne();
		PageInfo<Map> info=new PageInfo<Map>(itinfor);
		return info;
	}
	@RequestMapping("/updateIdStateTwo")
	public String updateIdStateTwo(Integer iid){
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		System.out.println(df.format(new Date()));
		service.updateIdStateTwo(iid);
		service.updatejg(iid, df.format(new Date()));
		return "mh/itemMeAll";
	}
	//查询已完成的项目
	@RequestMapping("/selectStateTwo")
	public @ResponseBody PageInfo<Map> selectStateTwo(Integer pageNum){
		PageHelper.startPage(pageNum, 5);
		List<Map> itinfor=service.selectStateTwo();
		PageInfo<Map> info=new PageInfo<Map>(itinfor);
		return info;
	}
	//查询项目经理
	@RequestMapping("/selectUsers")
	public @ResponseBody List<Map> selectUsers(){
		
		
		return service.selectUsers();
	}
	//任命项目经理
	@RequestMapping("/updateOrganization")
	public void updateOrganization(Itinfor i){
		
		service.updateOrganization(i);
	}
	
	@RequestMapping("/selectUsersName")
	public @ResponseBody List<Map> selectUsersName(){
		
		
		return service.selectUsersName();
	}
	
	@RequestMapping("/updateItworkplan")
	public void updateItworkplan(Itinfor i){
		service.updateItworkplan(i);
		
	}
	@RequestMapping("/selectMeItinforOne")
	public String selectMeItinforOne(Integer did,HttpSession session){
		
		List<Map> list=service.selectMeItinforOne(((Users)session.getAttribute("CurrentUser")).getUid());
		session.setAttribute("list",list);
		return null;
		
		
		
	}

}
