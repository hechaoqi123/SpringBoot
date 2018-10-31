package com.aaa.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Recruit;
import com.aaa.bean.Userdetail;
import com.aaa.service.RecruitService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

//招聘申请与配置
@Controller
@RequestMapping("Recruit")
public class RecruitController {
	@Autowired
	RecruitService service;
	 //查询所有数据
	@ResponseBody
	@RequestMapping("/getAll")
    public PageInfo<Recruit> getAll(Integer pageNum){
		  PageHelper.startPage(pageNum,13);
		  List<Recruit> list=service.getAll();
		  PageInfo<Recruit> info=new PageInfo<Recruit>(list);
	    	return info;
    }
	//提交申请
	@RequestMapping("/savePlay")
	public String savePlay(Recruit recruit){
		service.saveAndApproval(recruit);
		return "hcq/recruit";
	}
	//检索数据量
	@RequestMapping("/getCount")
	public  @ResponseBody Integer[] getCount(HttpSession session){
		     Userdetail user=(Userdetail) session.getAttribute("detail");
		     if(user.getPosition().equals("超级管理员")){//超级管理员
		    	 return service.getCount(null,null);
		     }else if(user.getDependence().equals("总经办")){//总经办
		    	 return service.getCount("领导审批","总经办");
		     }else if(user.getDependence().equals("人事部")&&(!user.getPosition().equals("人事主管"))){//人事专员
		    	 return service.getCountPeople("人事处理");
		     }else{
		    	 return service.getCount("填单",user.getDependence());
		     }
	}
	//条件查询
	@ResponseBody
	@RequestMapping("/queryByCriteria")
    public PageInfo<Recruit> queryByCriteria(Integer pageNum,Recruit recruit){
		  PageHelper.startPage(pageNum,13);
		  List<Recruit> list=null;
		  if(recruit.getStatus().equals("")||recruit.getStatus()==null){
			  list=service.getAll();
		  }else{
			  list=service.select(recruit);
		  }
		  PageInfo<Recruit> info=new PageInfo<Recruit>(list);
	    	return info;
    }
	//申请详情
	@RequestMapping("/detail/{id}")
    public String queryByCriteria(@PathVariable("id")Integer pageNum,Model model){
		  Recruit Apply=service.selectByPrimaryKey(pageNum);
		  model.addAttribute("apply", Apply);
	    	return "hcq/examination/recruitExamination";
    }
	//申请状态变更
	@RequestMapping("/update")
    public @ResponseBody String update(Recruit recruit,String remark){
		  service.UpdateAndRemark(recruit,remark);
	    	return "success";
    }
	
}
