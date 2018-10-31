package com.aaa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.bean.Official;
import com.aaa.bean.transfer;
import com.aaa.service.OfficialService;
import com.aaa.service.TransferService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("Transfer")
public class TransferController {
	@Autowired
	TransferService service;
	@ResponseBody
	@RequestMapping("/getAll")
    public PageInfo<transfer> getAll(Integer pageNum){
    	  PageHelper.startPage(pageNum,13);
		  List<transfer> list=service.getAll();
		  PageInfo<transfer> info=new PageInfo<transfer>(list);
    	return info;
    }
	//新增招聘申请
	@RequestMapping("/savePlay")
	public String savePlay(transfer transfer){
		service.saveAndApproval(transfer);
		return "hcq/transfer";
	}
	@ResponseBody
	@RequestMapping("/queryBycriteria")
    public PageInfo<transfer> queryBycriteria(Integer pageNum,transfer entry){
		  PageHelper.startPage(pageNum,13);
		  List<transfer> list=null;
		  if(entry.getStatus().equals("")||entry.getStatus()==null){//超级管理员
			  list=service.getAll();
		  }else if(entry.getStatus().equals("领导审批")&&entry.getOldpart().equals("总经办")){//总经办
	          entry.setOldpart(null);
			  list=service.select(entry);//status:领导审批
			  entry.setNewpart("总经办");
			  entry.setStatus("新主管审批");
			  list.addAll(service.select(entry));
		  }else if(entry.getStatus().equals("人事处理")){//人事专员
	          entry.setOldpart(null);
			  list=service.select(entry);
		  }else{//非超级管理员 非总经管办
			  list=service.select(entry);//本部门调动申请
			  entry.setNewpart(entry.getOldpart());
			  entry.setOldpart(null);
			  entry.setStatus("新主管审批");
			  list.addAll(service.select(entry));//新部门调动申请
		  }
		  PageInfo<transfer> info=new PageInfo<transfer>(list);
    	return info;
    }
	//申请详情
	@RequestMapping("/detail/{id}")
    public String queryByCriteria(@PathVariable("id")Integer pageNum,Model model){
		 transfer Apply=service.selectByPrimaryKey(pageNum);
		  model.addAttribute("apply", Apply);
	    	return "hcq/examination/TransferApplyExamination";
    }
	//申请状态变更
	@RequestMapping("/update")
    public @ResponseBody String update(transfer transfer,String remark){
		  service.UpdateAndRemark(transfer,remark);
	    	return "success";
    }
}
