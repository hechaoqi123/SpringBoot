package com.aaa.controller;


import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Users;
import com.aaa.bean.Userstowmodile;
import com.aaa.service.UserstowmodileService;
@Controller
@RequestMapping("/Userstowmodile")
public class UserstowmodileController{
	@Autowired
	UserstowmodileService service;
	
	@RequestMapping("/getUserstowmodile")
	@ResponseBody
	public List<Users> getUserstowmodile(Integer mTowId){
		List<Users> twoUsers = service.getTwoUsers(mTowId);
		return twoUsers;
	}
	@RequestMapping("/addUserstowmodile")
	@ResponseBody
	public String addUserstowmodile(Userstowmodile record){
		service.insert(record);
		return "true";
	}
	@RequestMapping("/delUserstowmodile")
	@ResponseBody
	public String delUserstowmodile(Userstowmodile record){
		System.out.println(record);
		service.delUserstowmodile(record);
		return "true";
	}
	
}
