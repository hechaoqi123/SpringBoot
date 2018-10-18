package com.aaa.controller;


import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Users;
import com.aaa.service.UsersService;
@Controller
@RequestMapping("/Users")
public class UsersController{
	@Autowired
	UsersService service;
	@RequestMapping("/getOne")
	public String selectDept(String unum, String upass,HttpServletRequest request) throws IOException{
		Users users = new Users(unum,upass);
		Users oneUsers = service.getOneUsers(users);
		System.out.println(oneUsers);
		if(oneUsers != null){
			request.getSession().setAttribute("user", oneUsers);
			return "index";
		}else{
			return "../BackJsp/login";
		}
	}
	@RequestMapping("/logoutUser")
	@ResponseBody
	public String logoutUser(HttpServletRequest request,HttpServletResponse response) throws IOException{
		HttpSession session = request.getSession();
		session.invalidate();
		//response.sendRedirect("../BackJsp/login.jsp");
		return "true";
		
	}
	
}
