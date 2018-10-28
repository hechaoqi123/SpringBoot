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
		if(oneUsers != null){
			request.getSession().setAttribute("user", oneUsers);
			return "index";
		}else{
			return "login";
		}
	}
	//注销
	@RequestMapping("/logoutUser")
	@ResponseBody
	public String logoutUser(HttpServletRequest request,HttpServletResponse response) throws IOException{
		HttpSession session = request.getSession();
		session.invalidate();
		return "true";
		
	}
	//用户访问模块可以访问和不可以访问
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
	//查询该角色访问的用户和不能访问的用户
	@RequestMapping("/postUser")
	@ResponseBody
	public Map<String,List> postUaer(Integer pid,String uname){
		Map<String,Object> m = new HashMap<String, Object>();
		m.put("pid",pid);
		m.put("uname",uname);
		List<Users> postTrueUser = service.postTrueUser(m);
		List<Users> postFalseUser = service.postFalseUser(m);
		Map<String,List> map = new HashMap<String, List>();
		map.put("postTrueUser", postTrueUser);
		map.put("postFalseUser", postFalseUser);
		return map;
	}
	//查询一个用户有关详细信息  
	@RequestMapping("/getOneUserDetails")
	@ResponseBody
	public List<Map> getOneUserDetails(Integer uid){
		List<Map> oneUserDetails = service.getOneUserDetails(uid);
		for (Map map : oneUserDetails) {
			String portraiturl = (String) map.get("portraitUrl");
			map.put("portraitUrl", "../upload/portrait/"+portraiturl);
		}
		return oneUserDetails;
	}
	//修改口令
	@RequestMapping("/updatePass")
	@ResponseBody
	public String updatePass(Users users){
		System.out.println(users.toString());
		service.updateByPrimaryKeySelective(users);
		return "true";
	}
	
}
