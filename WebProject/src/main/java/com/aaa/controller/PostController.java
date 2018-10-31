package com.aaa.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Post;
import com.aaa.bean.Users;
import com.aaa.service.PostService;
import com.aaa.service.UsersService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/post")
public class PostController {
	@Autowired
	PostService service;
	@Autowired
	UsersService userService;
	
	@RequestMapping("/getAllpost")
	@ResponseBody
   public PageInfo<Post> getAll(Integer pageNum, Integer deptId){
		PageHelper.startPage(pageNum, 6);
		List<Post> allPost = service.getAllPost(deptId);
		PageInfo<Post> info=new PageInfo<Post>(allPost);
		return info;
  }
	@RequestMapping("/delOnePost")
	@ResponseBody
	public String delOnepost(Integer pid){
		service.deleteByPrimaryKey(pid);
		return "true";
	}
	@RequestMapping("/getOnePost")
	public String getOnePost(Integer pid,Model m){
		Post post = service.selectByPrimaryKey(pid);
		m.addAttribute("post", post);
		return "LDL/postUpdate";
	}
	@RequestMapping("/updateOnePost")
	public String updateOnePost(Post post){
		service.updateByPrimaryKey(post);
		return "LDL/post";
	}
	@RequestMapping("/addOnePost")
	public String addOnePost(Post post){
		service.save(post);
		return "LDL/post";
	}
	
	//查询该职位可以访问的模块和不可以访问的模块
	@RequestMapping("/postVisittwomodile")
	@ResponseBody
	public Map<String,List> postVisittwomodile(Integer pid,String mname){
		Map<String,Object> m = new HashMap<String, Object>();
		m.put("pid",pid);
		m.put("mname",mname);
		List<Map> postTrueVisittwomodile = service.postTrueVisittwomodile(m);
		List<Map> postFalseVisittwomodile = service.postFalseVisittwomodile(m);
		//System.out.println("postTrueVisittwomodile:======"+postTrueVisittwomodile);
		//System.out.println("postfalseVisittwomodile:======"+postFalseVisittwomodile);
		Map<String,List> map = new HashMap<String, List>();
		map.put("postTrueVisittwomodile", postTrueVisittwomodile);
		map.put("postFalseVisittwomodile", postFalseVisittwomodile);
		return map;
	}

	 //增减访问功能
	@RequestMapping("/delpostVisittwomodile")
	@ResponseBody
    public String delpostVisittwomodile(Integer pid, String mTowId){
		Map<String,Object> m = new HashMap<String, Object>();
		m.put("pid",pid);
		m.put("mTwoid",mTowId);
    	service.delpostVisittwomodile(m);
		return "true";
	}
	@RequestMapping("/insertpostVisittwomodile")
	@ResponseBody
    public String insertpostVisittwomodile(Integer pid, String mTowId){
		Map<String,Object> m = new HashMap<String, Object>();
		m.put("pid",pid);
		m.put("mTwoid",mTowId);
		service.insertpostVisittwomodile(m);
		return "true";
	}
	
}
