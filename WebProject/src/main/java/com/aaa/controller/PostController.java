package com.aaa.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Post;
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
		service.insert(post);
		return "LDL/post";
	}

	
}
