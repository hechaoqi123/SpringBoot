package com.aaa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Leaveapply;
import com.aaa.bean.Official;
import com.aaa.bean.Overtime;
import com.aaa.service.LeaveService;
import com.aaa.service.OfficialService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("Leave")
public class LeaveController {
	@Autowired
	LeaveService service;
	@ResponseBody
	@RequestMapping("/getAll")
    public PageInfo<Leaveapply> getAll(Integer pageNum){
		  PageHelper.startPage(pageNum,13);
		  List<Leaveapply> list=service.getAll();
		  PageInfo<Leaveapply> info=new PageInfo<Leaveapply>(list);
    	return info;
    }
	//休假申请
	@RequestMapping("/savePlay")
	public String savePlay(Leaveapply leave){
		service.saveAndApproval(leave);
		return "hcq/leave";
	}
	//条件查询
	@ResponseBody
	@RequestMapping("/queryBycriteria")
    public PageInfo<Leaveapply> queryBycriteria(Integer pageNum,Leaveapply off){
		  PageHelper.startPage(pageNum,13);
		  List<Leaveapply> list=null;
		  if(off.getStatus().equals("")||off.getStatus()==null){
			  list=service.getAll();
		  }else{
			  list=service.select(off);
		  }
		  PageInfo<Leaveapply> info=new PageInfo<Leaveapply>(list);
    	return info;
    }
	//申请详情
	@RequestMapping("/detail/{id}")
    public String queryByCriteria(@PathVariable("id")Integer pageNum,Model model){
		Leaveapply Apply=service.selectByPrimaryKey(pageNum);
		  model.addAttribute("apply", Apply);
	    	return "hcq/examination/LeaveApplyExamination";
    }
	//申请状态变更
	@RequestMapping("/update")
    public @ResponseBody String update(Leaveapply recruit,String remark){
		  service.UpdateAndRemark(recruit,remark);
	    	return "success";
    }
}
