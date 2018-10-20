package com.aaa.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Userdetail;
import com.aaa.bean.Users;
import com.aaa.service.UserdetailService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("userdetail")
public class UserdetailController {
	@Autowired
	UserdetailService service;
	@RequestMapping("/getUserdetail")
   public String selectById(HttpSession session,Model model){
		    Users se=(Users) session.getAttribute("CurrentUser");
			Userdetail user=service.getOne(se.getUid());
			model.addAttribute("user",user);
	    return "hcq/MyInfo";
   }
    @RequestMapping("/getDetailInfo")
    public String selectUserInfo(Integer id,Model model){
    	
    	Userdetail user=service.getOne(id);
		model.addAttribute("user",user);
    	return "hcq/DetailInfo";
    }
	//分页查询
	@RequestMapping("/getAllUserdetail")
	@ResponseBody
   public PageInfo<Userdetail> getAll(Integer pageNum){
	   PageHelper.startPage(pageNum,13);
	   List<Userdetail> users=service.getAll();
	   PageInfo<Userdetail> info=new PageInfo<Userdetail>(users);
        return info;
  }
	//查询各种类别数量
	@RequestMapping("/classify")
	@ResponseBody
	  public List<Userdetail> getAll(Userdetail user){
		    return service.getAll();
	  }
	//条件检索
	@RequestMapping("/queryByCriteria")
	@ResponseBody
	public PageInfo<Userdetail> queryByCriteria(Integer pageNum,String status){
		  PageHelper.startPage(pageNum,13);
		   List<Userdetail> users=service.queryByCriteria(status);
		   PageInfo<Userdetail> info=new PageInfo<Userdetail>(users);
	        return info;
	}
	//添加员工信息
	@RequestMapping("/save")
	public String save(Userdetail user){
		service.save(user);
		return "hcq/staff";
	}
	//删除员工信息
	@RequestMapping("/remove")
	public String remove(Integer userId){
		service.remove(userId);
		return "success";
	}
}
