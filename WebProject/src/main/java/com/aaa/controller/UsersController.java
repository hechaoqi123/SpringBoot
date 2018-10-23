package com.aaa.controller;


import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Dept;
import com.aaa.bean.Userdetail;
import com.aaa.bean.Users;
import com.aaa.service.DeptService;
import com.aaa.service.UserdetailService;
import com.aaa.service.UsersService;
@Controller
@RequestMapping("/Users")
public class UsersController{
	@Autowired
	UsersService service;
	@Autowired
	UserdetailService detailservice;
	@Autowired
	DeptService deptservice;
	@RequestMapping("/getOne")
	public String selectDept(String unum, String upass,HttpServletRequest request) throws IOException{
		
		//获取当前用户信息
		Users users = new Users(unum,upass);
		Users oneUsers = service.getOneUsers(users);
		request.getSession().setMaxInactiveInterval(-1);//设置session时长
		if(oneUsers != null){
			//获取当前部门主管信息
			String dept=detailservice.getOne(oneUsers.getUid()).getDependence();
			Dept entity=deptservice.getDept(dept);
			Userdetail superUser=detailservice.getOne(entity.getDeptstate());
			request.getSession().setAttribute("superUser", superUser);
			request.getSession().setAttribute("CurrentUser", oneUsers);
			return "index";
		}else if(request.getSession().getAttribute("CurrentUser")!=null){
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
		return "true";
		
	}
	@RequestMapping("/aootUser")
	@ResponseBody
	public Map<String,List> alootUaer(Integer mTowId,String uname){
		Map<String,Object> m = new HashMap<String, Object>();
		m.put("mTowId",mTowId);
		m.put("uname",uname);
		List<Users> alootTrueUser = service.alootTrueUser(m);
		List<Users> alootFalseUser = service.alootFalseUser(m);
		Map<String,List> map = new HashMap<String, List>();
		map.put("alootTrueUser", alootTrueUser);
		map.put("alootFalseUser", alootFalseUser);
		return map;
	}
	
}
