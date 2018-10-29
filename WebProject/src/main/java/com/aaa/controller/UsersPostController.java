package com.aaa.controller;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Userspost;
import com.aaa.service.UserspostService;
@Controller
@RequestMapping("/UsersPost")
public class UsersPostController{
	@Autowired
	UserspostService service;
	
	@RequestMapping("/addUserspost")
	@ResponseBody
	public String addUserspost(Userspost record){
		System.out.println(record);
		service.insert(record);
		return "true";
	}
	@RequestMapping("/delUserspost")
	@ResponseBody
	public String delUserspost(Userspost record){
		System.out.println(record);
		service.delUsersPost(record);
		return "true";
	}
	
}
